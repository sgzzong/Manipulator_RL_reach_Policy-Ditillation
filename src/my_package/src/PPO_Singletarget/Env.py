#! /usr/bin/env python3
# -*- coding: utf-8 -*-
import sys
import rospy
import moveit_commander #Python Moveit interface를 사용하기 위한 모듈
import geometry_msgs.msg
import copy
import math
from moveit_commander.conversions import pose_to_list
from gazebo_msgs.msg import ModelState 
from gazebo_msgs.srv import SetModelState
import os
import random
import numpy as np 
import matplotlib.pyplot as plt
import Config
import torch

class Ned2_control(object):
    def __init__(self):
        super(Ned2_control, self).__init__()
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node('move_group_python_interface', anonymous=True)
        group_name = "ned2" #moveit의 move_group name >> moveit assitant로 패키지 생성 시 정의
        move_group = moveit_commander.MoveGroupCommander(group_name) # move_group node로 동작을 계획하고,  실행 

        self.move_group = move_group
        
        self.Is_Multi_Target = False

        self.X_range = [0.2,0.45]
        self.Y_range = [-0.3,0.3]
        self.Z_range = [0.2,0.375]

        if(self.Is_Multi_Target):
            self.target = [random.uniform(self.X_range[0], self.X_range[1]),
                           random.uniform(self.Y_range[0], self.Y_range[1]),
                           random.uniform(self.Z_range[0], self.Z_range[1])]
        else:
            self.target = [0.4,0.2,0.15] # 목표 지점 위치
        
        print(self.target)
        self.target_reset()
        self.reset()
        self.start_pose = self.get_pose()
        self.total_Distance = math.sqrt(sum([(a - b) ** 2 for a, b in zip(self.start_pose, self.target)]))
        self.interval = self.total_Distance/5

        self.isLimited = False 
        self.Limit_joint=[[-171.88,171.88],
                            [-105.0,34.96],
                            [-76.78,89.96],
                            [-119.75,119.75],
                            [-110.01,110.17],
                            [-144.96,144.96]]

        self.Iswait = False
        if(self.Iswait):
            self.weight = [5,
                            2,
                            2,
                            3,
                            3,
                            4]
        else:
            self.weight = [6.8,
                            3,
                            3.32,
                            4.8,
                            4.4,
                            5.8]
        ## reward weight ##
        self.Success_weight = 1.0
        self.Distance_weight = 1.0
        self.Limited_weight = 1.0

        
        self.count_complete = 0

        self.goalDistance = 0.025
        self.prev_d = 0
        self.farDistance = 0.999

        self.prev_state = []
        self.joint_error_count = 0
        self.prev_action = []
        self.time_step = 0
        self.MAX_time_step = 256

        self.job_list = []
        self.target_directory = ""

    def Degree_to_Radian(self,Dinput):
        Radian_list = []
        for i in Dinput:
            Radian_list.append(i* (math.pi/180.0))
        return Radian_list

    def Radian_to_Degree(self,Rinput):
        Degree_list = []
        for i in Rinput:
            Degree_list.append(i* (180.0/math.pi))
        return Degree_list

    def setAction(self,angle):  # angle 각도로 이동 (angle 은 크기 6의 리스트 형태)
        joint = self.getJoint()[0:6]
        # self.job_list.append(joint)

        self.prev_action = copy.deepcopy(joint)
        #print(angle)
        joint[0] += angle[0] * self.weight[0]
        joint[1] += angle[1] * self.weight[1]
        joint[2] += angle[2] * self.weight[2]
        joint[3] = 0 
        joint[4] = 0
        joint[5] = 0
        

        for i in range(len(self.Limit_joint)):
            if(self.Limit_joint[i][1] < joint[i]):
                joint[i] = self.Limit_joint[i][1]
                self.isLimited = True
                # print("OUT OF (Limit_joint), UPPER JOINT"+str(i+1) + ", ", joint)
            elif(self.Limit_joint[i][0] > joint[i]):
                joint[i] = self.Limit_joint[i][0]
                self.isLimited = True
                # print("OUT OF (Limit_joint), LOWER JOINT"+str(i+1) + ", ", joint)

        try:
            self.move_group.go(self.Degree_to_Radian(joint), wait=self.Iswait)
        except:
            # print("move_group.go EXCEPT, ", joint)
            self.isLimited = True

        self.time_step += 1

    def ikaction(self):
        # print("hiru")
        pose_goal = geometry_msgs.msg.Pose()
        pose_goal.position.x = 0.2
        pose_goal.position.y = 0.3
        pose_goal.position.z = 0.4 #static

        self.move_group.set_pose_target(pose_goal)
        self.move_group.go(wait=True)
        self.move_group.stop()
            
    def reset(self):
        # print("Go To Home pose")
        self.time_step = 0
        self.Negative_DF = 1.01
        self.Positive_DF = 0.99
        self.move_group.go([0,0,0,0,0,0], wait=True)


    def getJoint(self): #joint 6축 각도
        joint = self.move_group.get_current_joint_values()
        joint = self.Radian_to_Degree(joint)
        # joint = [round(num, 5) for num in joint] # 소수점 반올림
        return joint

    def get_pose(self):
        pose = self.move_group.get_current_pose().pose
        pose_value = [pose.position.x,pose.position.y,pose.position.z]
        return pose_value
    
    def getReward(self):
        # self.move_group.stop()
        end_effector = self.get_pose()
        
        d = math.sqrt(abs((end_effector[0]-self.target[0])**2 + (end_effector[1]-self.target[1])**2 + (end_effector[2]-self.target[2])**2 ))
        # reward parameter
        rewardS = 0 # 도달 성공 시 부여
        # rewardD = -15 * d # 거리가 가까울수록 부여
        rewardD = -1.5 * d # 거리가 가까울수록 부여
        rewardL = 0 # 로봇팔 동작 가능 범위(각도)를 벗어나면 부여
        totalReward = 0
        IsDone = False
        isSuccess = 0

        if(self.time_step >= self.MAX_time_step):
            IsDone = True

        if not(0.1 < end_effector[2] < 0.8):
            #print("222222222222")
            IsDone = True
            self.isLimited = True

        # 목표 지점 도달 시
        if (d <= self.goalDistance):
            self.count_complete += 1
            #print("SUCCESS")
            if(self.Is_Multi_Target):
                self.target = [random.uniform(self.X_range[0], self.X_range[1]),
                            random.uniform(self.Y_range[0], self.Y_range[1]),
                            random.uniform(self.Z_range[0], self.Z_range[1])]
                self.target_reset()
            IsDone = True
            isSuccess = 1  
            #rewardS = 1000
            rewardS = 10

        # 제한 범위 외로 이동 시
        elif (d > self.farDistance):
            #print("OUT OF (farDistance), distance : ", d)
            IsDone = True
            rewardL = -30

        # 로봇팔 동작 범위(각도)를 벗어날 시
        if (self.isLimited):
            #print("limit out")
            IsDone = True
            self.isLimited = False
            rewardL = -50

        # if self.prev_d < d: # 현재 목표 지점까지의 거리가 이전 거리보다 멀어졌을 경우
        #     rewardP = -5
        #print(rewardS,rewardD,rewardL)

        totalReward += (self.Success_weight * rewardS)
        totalReward += (self.Distance_weight * rewardD)
        totalReward += (self.Limited_weight * rewardL)
        #totalReward += (self.Limited_weight * rewardP)

        return totalReward,IsDone,isSuccess

    def getState(self):
        joint_Dgree = self.getJoint()
        endEffector_XYZ = self.get_pose()
        state = joint_Dgree + endEffector_XYZ + self.target
        
        if(len(state) == 12):
            self.prev_state = state
        else:
            state = self.prev_state
            self.joint_error_count += 1
            print(self.joint_error_count)
        return state
    
    def target_reset(self):
        state_msg = ModelState()
        state_msg.model_name = 'sphere'
        state_msg.pose.position.x = self.target[0]
        state_msg.pose.position.y = self.target[1]
        state_msg.pose.position.z = self.target[2]
        state_msg.pose.orientation.x = 0
        state_msg.pose.orientation.y = 0
        state_msg.pose.orientation.z = 0
        state_msg.pose.orientation.w = 0

        rospy.wait_for_service('/gazebo/set_model_state')
        for i in range(1000):
            set_state = rospy.ServiceProxy("/gazebo/set_model_state", SetModelState)
            resp = set_state(state_msg)    
    def get_movement(self,movement):
        current = self.get_pose()
        current_Distance = math.sqrt(sum([(a - b) ** 2 for a, b in zip(current, self.target)]))

        percentage_moved = (self.total_Distance - current_Distance)/self.total_Distance * 100
        return percentage_moved
    
    def wpa_point(self,pre_pose):
        current = self.get_pose()
        #print("total_Distance: ",total_Distance) # 0.1778608647436364
        current_Distance = math.sqrt(sum([(a - b) ** 2 for a, b in zip(current, self.target)]))
        pre_Distance = math.sqrt(sum([(a - b) ** 2 for a, b in zip(pre_pose, self.target)]))

        # print("current_Distance: ",current_Distance)
        # print("pre_Distance: ",pre_Distance)
        

        percentage_moved = (current_Distance)/self.total_Distance * 100 #목표지점과의 거리 진도율
        pre_percentage_moved = (pre_Distance)/self.total_Distance * 100 #목표지점과의 거리 진도율

        step_wpa = pre_percentage_moved - percentage_moved

        return step_wpa

    # def classification(self,classification_storage):
    #     interval = math.sqrt(sum([(a - b) ** 2 for a, b in zip(self.start_pose, self.target)]))/10

    #     bins = [[] for _ in range(11)] #[[], [], [], [], [], [], [], [], [], []]

    #     for item in classification_storage:
    #         if item[1] == "good":
    #             # print(step)
    #             # print(interval)
    #             # print(item[0]//interval)
    #             # print(len(bins))
    #             current_Distance = math.sqrt(sum([(a - b) ** 2 for a, b in zip(item[0], self.target)]))
    #             try:
    #                 bins[current_Distance/interval].append(1)
    #             except:
    #                 print(current_Distance)
    #                 print(interval)
    #                 print(current_Distance/interval)
    #     for i in range(len(bins)):
    #         print(i,"구간 :",len(bins[i]))
    def classification_factor(self, pose):
        current_Distance = math.sqrt(sum([(a - b) ** 2 for a, b in zip(pose, self.start_pose)]))
        index = int(current_Distance / self.interval) + 1
        return math.pow(Config.Clutch_factor, index)
    def classification_point(self,classification_storage):
        wpa_avg = 0
        avg_step = 0
        for item in classification_storage:
            #print(item)
            if item[2] < 0:
                #print(item[2])
                wpa_avg += item[2]
                avg_step +=1
        return wpa_avg/avg_step
    def classification_point_V2(self,classification_storage):
        wpa_avg = 0
        avg_step = 0
        tmp = 0
        for item in classification_storage:
            if item[2] - tmp < -3: #이상치 데이터 일 경우 빼기
                tmp = item[2]
                print("pass")
                # pass
            elif item[2] < 0: # 이상치 데이터를 제외하고, wpa가 0보다 낮은 행동을 할 경우 들의 평균을 구함
                #print(item[2])
                wpa_avg += item[2]
                avg_step +=1
            
        return wpa_avg/avg_step
    
    def classification_point_V3(self,classification_storage):
        wpa_avg = 0
        avg_step = 0
        tmp = 0
        for item in classification_storage:
            if item[2]< 0: #이상치 데이터 일 경우 빼기
                avg_step +=1
        print(avg_step)
        return wpa_avg/avg_step
    
    def classification(self, classification_storage,step): #좋은 영역과 나쁜 영역을 분류하는 역할/ classification_storage는 이미 분류가 되어 있음
        # print(total_distance)
        # print(interval)
        bins = [[] for _ in range(5)]
        good = 0
        bad = 0
        
        for item in classification_storage:
            if item[1] == "good":
                current_Distance = math.sqrt(sum([(a - b) ** 2 for a, b in zip(item[0], self.start_pose)]))
                #print(current_Distance)
                # 구간 인덱스 계산
                index = int(current_Distance / self.interval)
                
                # 구간 인덱스가 bins의 범위를 초과하지 않도록 조정
                index = min(index, len(bins) - 1)
                
                bins[index].append(1)
                
                good += 1
            else:
                bad += 1
                current_Distance = math.sqrt(sum([(a - b) ** 2 for a, b in zip(item[0], self.start_pose)]))
                #print(current_Distance)
                # 구간 인덱스 계산
                index = int(current_Distance / self.interval)
                
                # 구간 인덱스가 bins의 범위를 초과하지 않도록 조정
                index = min(index, len(bins) - 1)
                
                bins[index].append(0)
        
        print("total_step : ",step, "good : ",good, "bad : ",bad)
        for i in range(len(bins)):
            total = 0
            for j in range(len(bins[i])):
                if bins[i][j] > 0:
                    total += 1
            print(i, "구간 :", len(bins[i]),"/",total)
        #print(total)

    def interpolation(self,classification_storage, Sub_storage):
        for i in range(len(classification_storage)):
            if classification_storage[i][1] == "bad" and i>1:
                #print("i :",i)
                for j in range(i-1,0, -1):
                    if classification_storage[j][1] == "good":
                        pre_good = Sub_storage[j][2].tolist()[0]
                        pre_wpa = classification_storage[j][2]
                        #print("j :",j)
                        break
                for j in range(i+1, len(classification_storage)):
                    if classification_storage[j][1] == "good":
                        next_good = Sub_storage[j][2].tolist()[0]
                        next_wpa = classification_storage[j][2]
                        #print("j :",j)
                        break
                pre_weight = pre_wpa / (pre_wpa + next_wpa)
                next_weight = next_wpa / (pre_wpa + next_wpa)
                result = [(a * pre_weight + b * next_weight) / 2 for a, b in zip(pre_good, next_good)]
                Sub_storage[i][2].data = torch.tensor([result], device='cuda:0')
        return Sub_storage
    # def plot(self,classification_storage):
    #     goods = []
    #     bads = []
    #     for item in classification_storage:
    #         if item[1] == "good":
    #             goods.append(item[0])
    #         elif item[1] == "bad":
    #             bads.append(item[0])
    #     goods = np.array(goods)
    #     bads = np.array(bads)

    #     fig = plt.figure()
    #     ax = fig.add_subplot(111, projection='3d')

    #     ax.scatter(goods[:, 0], goods[:, 1], goods[:, 2], color='blue',s=10)
    #     ax.scatter(bads[:, 0], bads[:, 1], bads[:, 2], color='red',s=10)
    #     #ax.scatter(bads[-1:, 0], bads[-1:, 1], bads[-1:, 2], color='black',s=100)
    #     #ax.scatter(0.4,0.2,0.15, color='green',s=100)
    #     print(goods[-1:, 0], goods[-1:, 1], goods[-1:, 2])
    #     ax.set_xlabel('X axis')
    #     ax.set_ylabel('Y axis')
    #     ax.set_zlabel('Z axis')
    #     plt.show()
    def plot(self, classification_storage):
        points = [item[0] for item in classification_storage]
        labels = [item[1] for item in classification_storage]
        goods = np.array([point for point, label in zip(points, labels) if label == "good"])
        bads = np.array([point for point, label in zip(points, labels) if label == "bad"])

        fig = plt.figure()
        ax = fig.add_subplot(111, projection='3d')

        # Scatter plot
        ax.scatter(goods[:, 0], goods[:, 1], goods[:, 2], color='gray', s=5)
        ax.scatter(bads[:, 0], bads[:, 1], bads[:, 2], color='red', s=5)

        # Convert points to numpy array
        points = np.array(points)

        # Highlight the last point in green
        ax.scatter(points[-1, 0], points[-1, 1], points[-1, 2], color='blue', s=20)

        # Connect points in the order they appear in classification_storage with color-coded lines
        for i in range(1, len(points)):
            color = 'gray' if labels[i-1] == "good" else 'red'
            ax.plot(points[i-1:i+1, 0], points[i-1:i+1, 1], points[i-1:i+1, 2], color=color, linewidth=1)

        ax.set_xlabel('X axis')
        ax.set_ylabel('Y axis')
        ax.set_zlabel('Z axis')
        plt.show()
import datetime
import torch
import Agent
from torch.utils.tensorboard import SummaryWriter
from replay_memory import ReplayMemory
import Config
from Env import *
import time
import os
import numpy as np
from utils import get_kl
import datetime

from torch.distributions import Normal

# Environment
env = Ned2_control()
env.reset()

# Teacher

Teacher = Agent.Agent(12, 3, batch_size=Config.BATCH_SIZE)
path = "models/4,2,15-PPO_Teacher0831_256*128*64/model_595_model_best.tar"
checkpoint = torch.load(path, map_location=lambda storage, loc: storage)
Teacher.agent_control.policy_nn.load_state_dict(checkpoint['model'])


# Student
Student = Agent.Student_model(12,3)
#writer = SummaryWriter(log_dir='wpa/runs/'+'testwpaV2_Studnet_'+str(Config.wpa_point)+"_"+str(Config.Clutch_factor)+str(Config.hidden_size_1) +'*'+ str(Config.hidden_size_2) +'*'+ str(Config.hidden_size_3) + '->' + str(Config.Student_hidden_size_1) +'*'+ str(Config.Student_hidden_size_2) +'*'+ str(Config.Student_hidden_size_3) +'_' + Config.date_time + str(Config.pd_buffer_size)) #lr, Success_Standard 를 포함하는 로그 저장 경로 생성
writer = SummaryWriter(log_dir='content/runs/'+'try_wpaV1_Studnet_'+str(Config.hidden_size_1) +'*'+ str(Config.hidden_size_2) +'*'+ str(Config.hidden_size_3) + '->' + str(Config.Student_hidden_size_1) +'*'+ str(Config.Student_hidden_size_2) +'*'+ str(Config.Student_hidden_size_3) +'_' + Config.date_time + str(Config.pd_buffer_size)) #lr, Success_Standard 를 포함하는 로그 저장 경로 생성
#writer = SummaryWriter(log_dir='content/runs/'+'simple_Preprocessing_PPO_Studnet_'+str(Config.hidden_size_1) +'*'+ str(Config.hidden_size_2) +'*'+ str(Config.hidden_size_3) + '->' + str(Config.Student_hidden_size_1) +'*'+ str(Config.Student_hidden_size_2) +'*'+ str(Config.Student_hidden_size_3) +'_' + Config.date_time + str(Config.pd_buffer_size)) #lr, Success_Standard 를 포함하는 로그 저장 경로 생성
#writer = SummaryWriter(log_dir='content/runs/'+'try_None_Studnet_'+str(Config.hidden_size_1) +'*'+ str(Config.hidden_size_2) +'*'+ str(Config.hidden_size_3) + '->' + str(Config.Student_hidden_size_1) +'*'+ str(Config.Student_hidden_size_2) +'*'+ str(Config.Student_hidden_size_3) +'_' + Config.date_time + str(Config.pd_buffer_size)) #lr, Success_Standard 를 포함하는 로그 저장 경로 생성

processing = True
now = datetime.datetime.now()
folderName = ('try_wpaV1_Studnet_'+str(Config.Clutch_factor)+str(Config.hidden_size_1) +'*'+ str(Config.hidden_size_2) +'*'+ str(Config.hidden_size_3) + '->' + str(Config.Student_hidden_size_1) +'*'+ str(Config.Student_hidden_size_2) +'*'+ str(Config.Student_hidden_size_3) +'_' + Config.date_time + str(Config.pd_buffer_size))
#folderName = ('simple_Studnet_'+str(Config.hidden_size_1) +'*'+ str(Config.hidden_size_2) +'*'+ str(Config.hidden_size_3) + '->' + str(Config.Student_hidden_size_1) +'*'+ str(Config.Student_hidden_size_2) +'*'+ str(Config.Student_hidden_size_3) +'_' + Config.date_time + str(Config.pd_buffer_size))
#folderName = ('try_None_Studnet_'+str(Config.hidden_size_1) +'*'+ str(Config.hidden_size_2) +'*'+ str(Config.hidden_size_3) + '->' + str(Config.Student_hidden_size_1) +'*'+ str(Config.Student_hidden_size_2) +'*'+ str(Config.Student_hidden_size_3) +'_' + Config.date_time + str(Config.pd_buffer_size))
def Teacher_data_wpa_storage_v3(model):
    print("Teacher_data_store_Start!")
    expert_data_memory = ReplayMemory(Config.REPLAY_SIZE)
    for n_step in range(1000):
        model.set_optimizer_lr_eps(n_step)
        pre_pose = env.get_pose()
        env.reset()
        start_time = time.time()  # 시작 시간 측정
        state = env.getState()
        state = np.reshape(state, [1, Config.STATE_SIZE])
        done = 0
        step = 0
        coords = []
        classification_storage = []
        Sub_storage = []
        while not done:
            step += 1
            actions, actions_logprob, mean, std = model.get_action(state)
            # print("action :", actions)
            # print("mean : ", mean)
            # print("std : ", std)
            env.setAction(actions.tolist()[0])
            time.sleep(Config.TIME_INTERVAL)
            wpa_point = env.wpa_point(pre_pose)

            #print(wpa_point)

            # get next state
            next_state = np.zeros(Config.STATE_SIZE)
            next_state = env.getState()
            next_state = np.reshape(next_state, [1, Config.STATE_SIZE])

            # get reward, done
            total_reward, done, success = env.getReward()
            
            Sub_storage.append((state,actions,mean,std,done))
            classification_storage.append((pre_pose,"bad",wpa_point))
            state = next_state
            pre_pose = env.get_pose()

        if success == 1:
            #print(Sub_storage[1])
            data_list = Sub_storage[1][2].tolist()[0]
            #print("data_list : ",data_list)
            # Sub_storage[1][2].data = torch.tensor([[3.0, 3.0, 3.0]], device='cuda:0')
            # print(Sub_storage[1])
            wpa_point = env.classification_point_V2(classification_storage)
            print("wpa_point :", wpa_point)
            for i in range(len(Sub_storage)):
                if classification_storage[i][2] > 0:
                    classification_storage[i] = (classification_storage[i][0], "good", classification_storage[i][2])
            env.interpolation(classification_storage, Sub_storage)
            env.classification(classification_storage, step)
            
            for i in range(len(Sub_storage)):
                expert_data_memory.push(Sub_storage[i][0],Sub_storage[i][1],Sub_storage[i][2],Sub_storage[i][3],Sub_storage[i][4])

        if len(expert_data_memory.buffer) == Config.pd_buffer_size:
            break
    
    teacher_data = expert_data_memory.sample(Config.pd_sample_size)

    Teacher_state = teacher_data[0]
    Teacher_action = teacher_data[1]
    Teacher_mean = teacher_data[2]
    Teacher_std = teacher_data[3]
    Teacher_done = teacher_data[4]
    # print("Teacher_state[0]:", Teacher_state[0])
    # print("Teacher_action[0]:", Teacher_action[0])
    # print("Teacher_mean[0]:", Teacher_mean[0])
    # print("Teacher_std[0]:", Teacher_std[0])
    # print("Teacher_done[0]:", Teacher_done[0])
    
    ## teacher model의 정규 분포 ##
    Teacher_mean = torch.tensor(Teacher_mean).squeeze(1)
    Teacher_std = torch.tensor(Teacher_std)

    if torch.cuda.is_available():
        Teacher_mean = Teacher_mean.to('cuda:0')
        Teacher_std = Teacher_std.to('cuda:0')

    Teacher_normal = Normal(Teacher_mean, Teacher_std)
    end_time = time.time()  # 종료 시간 측정
    elapsed_time = end_time - start_time

    return Teacher_normal, Teacher_state, elapsed_time
    # next_path = find_next_path(data_path)
    # torch.save(expert_data_memory.buffer, next_path)
def Teacher_data_wpa_storage_v2(model):
    print("Teacher_data_store_Start!")
    expert_data_memory = ReplayMemory(Config.REPLAY_SIZE)
    for n_step in range(1000):
        pre_pose = env.get_pose()
        Sub_storage = [] #에피소드가 성공했는지 여부에 대한 리플라이버퍼
        classification_storage = []
        model.set_optimizer_lr_eps(n_step)
        env.reset()
        state = env.getState()
        state = np.reshape(state, [1, Config.STATE_SIZE])
        done = 0
        bad = 0
        step = 0
        while not done:
            step += 1

            actions, actions_logprob, mean, std = model.get_action(state)
            env.setAction(actions.tolist()[0])
            time.sleep(Config.TIME_INTERVAL)
            wpa_point = env.wpa_point(pre_pose)

            print(wpa_point)

            # get next state
            next_state = np.zeros(Config.STATE_SIZE)
            next_state = env.getState()
            next_state = np.reshape(next_state, [1, Config.STATE_SIZE])

            # get reward, done
            total_reward, done, success = env.getReward()
            
            Sub_storage.append((state,actions,mean,std,done))
            classification_storage.append((pre_pose,"bad",wpa_point))
            state = next_state
            pre_pose = env.get_pose()

        if success == 1:
            wpa_point = env.classification_point_V3(classification_storage)
            print("wpa_point :", wpa_point)
            for i in range(len(Sub_storage)):
                if classification_storage[i][2] > wpa_point:
                    expert_data_memory.push(Sub_storage[i][0],Sub_storage[i][1],Sub_storage[i][2],Sub_storage[i][3],Sub_storage[i][4])
                    classification_storage[i] = (classification_storage[i][0], "good", classification_storage[i][2])
            env.classification(classification_storage, step)

        if len(expert_data_memory.buffer) == Config.pd_buffer_size:
            break
    
    teacher_data = expert_data_memory.sample(Config.pd_sample_size)

    Teacher_state = teacher_data[0]
    Teacher_action = teacher_data[1]
    Teacher_mean = teacher_data[2]
    Teacher_std = teacher_data[3]
    Teacher_done = teacher_data[4]
    # print("Teacher_state[0]:", Teacher_state[0])
    # print("Teacher_action[0]:", Teacher_action[0])
    # print("Teacher_mean[0]:", Teacher_mean[0])
    # print("Teacher_std[0]:", Teacher_std[0])
    # print("Teacher_done[0]:", Teacher_done[0])
    
    ## teacher model의 정규 분포 ##
    Teacher_mean = torch.tensor(Teacher_mean).squeeze(1)
    Teacher_std = torch.tensor(Teacher_std)

    if torch.cuda.is_available():
        Teacher_mean = Teacher_mean.to('cuda:0')
        Teacher_std = Teacher_std.to('cuda:0')

    Teacher_normal = Normal(Teacher_mean, Teacher_std)

    return Teacher_normal, Teacher_state
    # next_path = find_next_path(data_path)
    # torch.save(expert_data_memory.buffer, next_path)
def Teacher_data_wpa_storage(model):
    print("Teacher_data_store_Start!")
    expert_data_memory = ReplayMemory(Config.REPLAY_SIZE)
    for n_step in range(1000):
        pre_pose = env.get_pose()
        Sub_storage = [] #에피소드가 성공했는지 여부에 대한 리플라이버퍼
        classification_storage = []
        model.set_optimizer_lr_eps(n_step)
        env.reset()
        state = env.getState()
        state = np.reshape(state, [1, Config.STATE_SIZE])
        done = 0
        bad = 0
        step = 0
        while not done:
            step += 1

            actions, actions_logprob, mean, std = model.get_action(state)
            env.setAction(actions.tolist()[0])
            time.sleep(Config.TIME_INTERVAL)
            wpa_point = env.wpa_point(pre_pose)

            # get next state
            next_state = np.zeros(Config.STATE_SIZE)
            next_state = env.getState()
            next_state = np.reshape(next_state, [1, Config.STATE_SIZE])

            # get reward, done
            total_reward, done, success = env.getReward()
            
           
            #classification_storage.append((state,actions,mean,std,done))
            if processing:
                if wpa_point > Config.wpa_point * env.classification_factor(pre_pose): #구간 별 Factor
                    Sub_storage.append((state,actions,mean,std,done))
                    classification_storage.append((pre_pose,"good",wpa_point))
                else:
                    bad += 1
                    classification_storage.append((pre_pose,"bad",wpa_point))

            state = next_state
            
            pre_pose = env.get_pose()
            #print("wpa_point :", wpa_point)
            #print("wpa_parameter :", wpa_parameter)
        if success == 1: #데이터 전처리를 위해 성공했을 때의 경험만 추가해줌
            for i in range(len(Sub_storage)):
                expert_data_memory.push(Sub_storage[i][0],Sub_storage[i][1],Sub_storage[i][2],Sub_storage[i][3],Sub_storage[i][4])
            # print(classification_storage)
            # print("buffer size : ",len(expert_data_memory.buffer))
            # print("bad : ", bad)
            # print("good : ", len(Sub_storage))

            print("total step :", len(Sub_storage)+bad,"good :",len(Sub_storage),"bad :",bad)
            env.classification(classification_storage)

        if len(expert_data_memory.buffer) == Config.pd_buffer_size:
            break
    
    teacher_data = expert_data_memory.sample(Config.pd_sample_size)

    Teacher_state = teacher_data[0]
    Teacher_action = teacher_data[1]
    Teacher_mean = teacher_data[2]
    Teacher_std = teacher_data[3]
    Teacher_done = teacher_data[4]
    # print("Teacher_state[0]:", Teacher_state[0])
    # print("Teacher_action[0]:", Teacher_action[0])
    # print("Teacher_mean[0]:", Teacher_mean[0])
    # print("Teacher_std[0]:", Teacher_std[0])
    # print("Teacher_done[0]:", Teacher_done[0])
    
    ## teacher model의 정규 분포 ##
    Teacher_mean = torch.tensor(Teacher_mean).squeeze(1)
    Teacher_std = torch.tensor(Teacher_std)

    if torch.cuda.is_available():
        Teacher_mean = Teacher_mean.to('cuda:0')
        Teacher_std = Teacher_std.to('cuda:0')

    Teacher_normal = Normal(Teacher_mean, Teacher_std)

    return Teacher_normal, Teacher_state
    # next_path = find_next_path(data_path)
    # torch.save(expert_data_memory.buffer, next_path)
def Teacher_data_storage_simple_Processing(model):
    print("Teacher_data_store_Start!")
    expert_data_memory = ReplayMemory(Config.REPLAY_SIZE)
    for n_step in range(1000):
        Sub_storage = [] #에피소드가 성공했는지 여부에 대한 리플라이버퍼
        model.set_optimizer_lr_eps(n_step)
        env.reset()
        start_time = time.time()  # 시작 시간 측정
        state = env.getState()
        state = np.reshape(state, [1, Config.STATE_SIZE])
        done = 0
        score = 0
        while not done:
            actions, actions_logprob, mean, std = model.get_action(state)
            env.setAction(actions.tolist()[0])
            time.sleep(Config.TIME_INTERVAL)

            next_state = np.zeros(Config.STATE_SIZE)
            next_state = env.getState()
            next_state = np.reshape(next_state, [1, Config.STATE_SIZE])

            total_reward, done, success = env.getReward()
            Sub_storage.append((state,actions,mean,std,done))

            #expert_data_memory.push(state,actions,mean,std,done)
            state = next_state
            score += total_reward
        
        if success == 1: #데이터 전처리를 위해 성공했을 때의 경험만 추가해줌.
            #end_time = time.time()
            #elapsed_time = end_time - start_time
            #if elapsed_time < 2:
                # for i in range(len(Sub_storage)):
                #     expert_data_memory.push(Sub_storage[i][0],Sub_storage[i][1],Sub_storage[i][2],Sub_storage[i][3],Sub_storage[i][4])
                # print("in~ : ",len(expert_data_memory.buffer))
            # print(len(Sub_storage),score)
            for i in range(len(Sub_storage)):
                expert_data_memory.push(Sub_storage[i][0],Sub_storage[i][1],Sub_storage[i][2],Sub_storage[i][3],Sub_storage[i][4])
            print("in~ : ",len(expert_data_memory.buffer))
        if len(expert_data_memory.buffer) == Config.pd_buffer_size:
            break
    
    teacher_data = expert_data_memory.sample(Config.pd_sample_size)

    Teacher_state = teacher_data[0]
    Teacher_action = teacher_data[1]
    Teacher_mean = teacher_data[2]
    Teacher_std = teacher_data[3]
    Teacher_done = teacher_data[4]

    Teacher_mean = torch.tensor(Teacher_mean).squeeze(1)
    Teacher_std = torch.tensor(Teacher_std)

    if torch.cuda.is_available():
        Teacher_mean = Teacher_mean.to('cuda:0')
        Teacher_std = Teacher_std.to('cuda:0')

    Teacher_normal = Normal(Teacher_mean, Teacher_std)

    return Teacher_normal, Teacher_state
def Teacher_data_storage(model):
    print("Teacher_data_store_Start!")
    expert_data_memory = ReplayMemory(Config.REPLAY_SIZE)
    for n_step in range(1000):
        Sub_storage = [] #에피소드가 성공했는지 여부에 대한 리플라이버퍼
        model.set_optimizer_lr_eps(n_step)
        env.reset()
        start_time = time.time()  # 시작 시간 측정
        state = env.getState()
        state = np.reshape(state, [1, Config.STATE_SIZE])
        done = 0
        score = 0
        while not done:
            actions, actions_logprob, mean, std = model.get_action(state)
            env.setAction(actions.tolist()[0])
            time.sleep(Config.TIME_INTERVAL)

            next_state = np.zeros(Config.STATE_SIZE)
            next_state = env.getState()
            next_state = np.reshape(next_state, [1, Config.STATE_SIZE])

            total_reward, done, success = env.getReward()
            Sub_storage.append((state,actions,mean,std,done))

            expert_data_memory.push(state,actions,mean,std,done)
            state = next_state
            score += total_reward

        if len(expert_data_memory.buffer) == Config.pd_buffer_size:
            break
    
    teacher_data = expert_data_memory.sample(Config.pd_sample_size)

    Teacher_state = teacher_data[0]
    Teacher_action = teacher_data[1]
    Teacher_mean = teacher_data[2]
    Teacher_std = teacher_data[3]
    Teacher_done = teacher_data[4]

    Teacher_mean = torch.tensor(Teacher_mean).squeeze(1)
    Teacher_std = torch.tensor(Teacher_std)

    if torch.cuda.is_available():
        Teacher_mean = Teacher_mean.to('cuda:0')
        Teacher_std = Teacher_std.to('cuda:0')

    Teacher_normal = Normal(Teacher_mean, Teacher_std)
    end_time = time.time()  # 종료 시간 측정
    elapsed_time = end_time - start_time
    return Teacher_normal, Teacher_state, elapsed_time
def Student_data_storage(model,Teacher_state):
    student_data = []
    for episode in range(Config.pd_sample_size):
        actions, actions_logprob, mean, std = model.get_action(Teacher_state[episode])
        student_data.append([mean, std])

    ## student model의 정규 분포 ##
    mean = torch.stack([item[0].squeeze() for item in student_data]) 
    std = torch.stack([item[1].squeeze() for item in student_data]) 

    Student_normal = Normal(mean, std)
    
    return Student_normal

def student_evaluation(model,ep_num):
    print(" evaluation Start! ")
    score = 0
    success_count = 0
    total_step= 0
    total_time = 0
    for i_episode in range(20):
        env.reset()
        start_time = time.time()
        done = False
        # get Initial State     
        state = env.getState()
        state = np.reshape(state, [1, Config.STATE_SIZE])
        step = 0
        while not done:
            # Feed current state to the policy NN and get action and its probability
            actions, actions_logprob, mean, std = model.get_action(state)
            
            # Use given action and retrieve new state, reward agent recieved and whether episode is finished flag
            env.setAction(actions.tolist()[0])
            time.sleep(Config.TIME_INTERVAL)

            # get next state
            next_state = np.zeros(Config.STATE_SIZE)
            next_state = env.getState()
            next_state = np.reshape(next_state, [1, Config.STATE_SIZE])

            # get reward, done
            reward, done, success = env.getReward()
            state = next_state
            score += reward
            step +=1 
        if done: 
            # print("mean : ", mean)
            # print("std :", std)
            if success == 1:
                success_count += 1
                end_time = time.time()  # 종료 시간 측정
                elapsed_time = end_time - start_time
                total_time += elapsed_time
                total_step += step
            else:
                print("Fail! Success_count(/20): ",success_count)
                return False, success_count/20, score/20, total_time/20, total_step/20
    writer.add_scalar('score_episode', score/20, ep_num)
    if success_count/20 >= 1:
        print("total_time : ", total_time/20)
        print("step : ", total_step/20)    
        print("Success! Success_count(/20): ",success_count)
        return True, success_count/20, score/20, total_time/20, total_step/20
def slow_student_evaluation(model,ep_num):
    print(" evaluation Start! ")
    score = 0
    success_count = 0
    total_step= 0
    total_time = 0
    for i_episode in range(20):
        env.reset()
        start_time = time.time()
        done = False
        # get Initial State     
        state = env.getState()
        state = np.reshape(state, [1, Config.STATE_SIZE])
        step = 0
        while not done:
            # Feed current state to the policy NN and get action and its probability
            actions, actions_logprob, mean, std = model.get_action(state)
            
            # Use given action and retrieve new state, reward agent recieved and whether episode is finished flag
            env.setAction(actions.tolist()[0])
            time.sleep(Config.TIME_INTERVAL)

            # get next state
            next_state = np.zeros(Config.STATE_SIZE)
            next_state = env.getState()
            next_state = np.reshape(next_state, [1, Config.STATE_SIZE])

            # get reward, done
            reward, done, success = env.getReward()
            state = next_state
            score += reward
            step +=1 
        if done: 
            if success == 1:
                end_time = time.time()  # 종료 시간 측정
                elapsed_time = end_time - start_time
                total_time += elapsed_time
                total_step += step
                print("success")
                success_count += 1
            else:
                elapsed_time = 9
                step = 256
                total_time += elapsed_time
                total_step += step
                print("Fail")
            print("total_time : ", elapsed_time)
            print("total_step : ", step)
    writer.add_scalar('time', total_time/20, ep_num)
    writer.add_scalar('step', total_step/20, ep_num)
    writer.add_scalar('score_episode', score/20, ep_num)
    if success_count/20 >= 1:
        print("total_time : ", total_time/20)
        print("step : ", total_step/20)    
        print("Success! Success_count(/20): ",success_count)
        return True, success_count/20, score/20, total_time/20, total_step/20
    else:
        print("total_time : ", total_time/20)
        print("step : ", total_step/20)    
        print("Success! Success_count(/20): ",success_count)
        return False, success_count/20, score/20, total_time/20, total_step/20
def train():
    for episode in range(1,3001): #10000 ep
        if episode % 100 == 1:
            Teacher_normal, Teacher_state, during_time = Teacher_data_wpa_storage_v3(Teacher) #선생모델 데이터 추출
            writer.add_scalar('data_storage_time', during_time, episode)
        else:
            pass
        Student_normal = Student_data_storage(Student,Teacher_state) #학생모델 데이터 추출
        ## kl loss ##
        loss = get_kl(Teacher_normal, Student_normal)
        ## Student model update ##
        Student.optimizer_policy.zero_grad()
        loss.backward()
        Student.optimizer_policy.step()
        ## 50 에피소드마다 Student model평가 ##
        if episode % 10 == 0:
            done, percent, score ,time,step= slow_student_evaluation(Student,episode)# 평가 후 성능이 높으면 True, 낮으면 False
            if done and time < 4.2 and step < 140:
                filePath = './models/' + folderName
                if not os.path.isdir(filePath): #경로가 있음을 확인하고, 없으면 새로 생성 
                    os.makedirs(filePath)

                torch.save({
                    'model': Student.policy_nn.state_dict(),
                    'optimizer': Student.optimizer_policy.state_dict()
                }, "./models/" + folderName + "/model_"+str(episode)+".tar")
                writer.add_scalar('success_rate', percent, episode)
                # writer.add_scalar('time', time, episode)
                # writer.add_scalar('step', step, episode)
                sys.exit(0) # 모델 저장 후 종료 
            else:
                writer.add_scalar('success_rate', percent, episode)
                # writer.add_scalar('time', time, episode)
                # writer.add_scalar('step', step, episode)
                pass

        print('Episode {} loss: {:.2f}'.format(episode, loss.data))
        writer.add_scalar('kl loss', loss.data, episode)
        
train()
writer.close()
    
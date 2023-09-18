import torch
import Agent
import Config
from Env import *
import time
import numpy as np 
import matplotlib.pyplot as plt
# Environment
env = Ned2_control()
env.reset()

Teacher = Agent.Agent(12, 3, batch_size=Config.BATCH_SIZE)
path = "models/4,2,15-PPO_Teacher0831_256*128*64/model_595_model_best.tar"
checkpoint = torch.load(path, map_location=lambda storage, loc: storage)
Teacher.agent_control.policy_nn.load_state_dict(checkpoint['model'])

def model_Inference(model):
    total_time = 0
    episode = 0
    total_step = 0
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
            # print("data_list : ",data_list)
            # print("wpa_point :", wpa_point)
            for i in range(len(Sub_storage)):
                if classification_storage[i][2] > 0:
                    classification_storage[i] = (classification_storage[i][0], "good", classification_storage[i][2])
            env.interpolation(classification_storage, Sub_storage)
            env.classification(classification_storage, step)
            
            # for i in range(len(Sub_storage)):
            #     expert_data_memory.push(Sub_storage[i][0],Sub_storage[i][1],Sub_storage[i][2],Sub_storage[i][3],Sub_storage[i][4])
            env.plot(classification_storage)
            break

            # episode += 1
            # end_time = time.time()  # 종료 시간 측정
            # elapsed_time = end_time - start_time
            # print("time : ", elapsed_time)
            # total_time += elapsed_time
            # total_step += step
            # if episode == 500:
            #     print("tried episode :", n_step)
            #     break
    # print("total_time : ", total_time/500)
    # print("step : ", total_step/500)
model_Inference(Teacher)
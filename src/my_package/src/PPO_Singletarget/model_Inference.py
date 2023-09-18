import torch
import Agent
import Config
from Env import *
import time
import numpy as np 

# Environment
env = Ned2_control()
env.reset()


Teacher = Agent.Agent(12, 3, batch_size=Config.BATCH_SIZE)
path = "models/4,2,15-PPO_Teacher0831_256*128*64/model_595_model_best.tar"
checkpoint = torch.load(path, map_location=lambda storage, loc: storage)
Teacher.agent_control.policy_nn.load_state_dict(checkpoint['model'])

# Student
# Student = Agent.Student_model(12,3)
# path = "models/experiment/wpa_inter_Studnet_0.98256*128*64->128*64*32_9.16_1.42.171000/model_1070.tar" # model 주소
# checkpoint = torch.load(path, map_location=lambda storage, loc: storage)
# Student.policy_nn.load_state_dict(checkpoint['model'])

def model_Inference(model):
    total_time = 0
    episode = 0
    total_step = 0
    for n_step in range(1000):
        model.set_optimizer_lr_eps(n_step)
        env.reset()
        start_time = time.time()  # 시작 시간 측정
        state = env.getState()
        state = np.reshape(state, [1, Config.STATE_SIZE])
        done = 0
        step = 0
        while not done:
            actions, actions_logprob, mean, std = model.get_action(state)
            env.setAction(actions.tolist()[0])
            time.sleep(Config.TIME_INTERVAL)
            
            # get next state
            next_state = np.zeros(Config.STATE_SIZE)
            next_state = env.getState()
            next_state = np.reshape(next_state, [1, Config.STATE_SIZE])

            # get reward, done
            total_reward, done, success = env.getReward()

            state = next_state
            step += 1
        if success == 1: 
            episode += 1
            end_time = time.time()  # 종료 시간 측정
            elapsed_time = end_time - start_time
            print("time : ", elapsed_time)
            total_time += elapsed_time
            total_step += step
            if episode == 100:
                print("tried episode :", n_step)
                break
    print("total_time : ", total_time/100)
    print("step : ", total_step/100)
    print("success rate : ", 100/n_step)
model_Inference(Teacher)
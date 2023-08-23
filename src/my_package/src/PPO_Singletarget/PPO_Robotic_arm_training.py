#! /usr/bin/env python3
# -*- coding: utf-8 -*-
import numpy as np
import torch
from torch.utils.tensorboard import SummaryWriter
import Config
import Agent
import time
from datetime import datetime
import sys
from Env import *
env = Ned2_control()
def verification(agent, env):
    success_count = 0
    for _ in range(20):
        done = False
        state = env.getState()
        state = np.reshape(state, [1, Config.STATE_SIZE])

        while not done:
            actions, actions_logprob, mean, std = agent.get_action(state)
            
            env.setAction(actions.tolist()[0])
            time.sleep(Config.TIME_INTERVAL)

            next_state = np.zeros(Config.STATE_SIZE)
            next_state = env.getState()
            next_state = np.reshape(next_state, [1, Config.STATE_SIZE])

            reward, done, success = env.getReward()
            state = next_state

            if done:
                if success == 1:
                    success_count += 1
                env.reset()
    return success_count/20

if __name__ == "__main__":
    state_size = Config.STATE_SIZE
    action_size = Config.ACTION_SIZE
    episode = 0
    episode_success = []
 
    agent = Agent.Agent(state_size=state_size, action_size=action_size, batch_size=Config.BATCH_SIZE)

    env = Ned2_control()
    env.reset()

    # Create writer for Tensorboard
    if Config.WRITER_FLAG == True:
        writer = SummaryWriter(log_dir='./runs/'+Config.WRITER_NAME)
        print(Config.WRITER_NAME)

    # get Initial State    
    state = env.getState()
    state = np.reshape(state, [1, state_size])
    score = 0

    # 날짜 기준 폴더 생성
    now = datetime.now()
    folderName = "PPO_Teacher" + str(now.month).zfill(2) + str(now.day).zfill(2) + '_' + str(Config.hidden_size_1) + "*"+ str(Config.hidden_size_2) + "*"+ str(Config.hidden_size_3) + '/'

    # ------------------------------ Training ------------------------------ #
    for n_step in range(Config.NUMBER_OF_STEPS): #에피소드
        agent.set_optimizer_lr_eps(n_step)
        rewards = []
        score_batch = 0
        Success_count = 0

        # Collect batch_size number of samples
        for n_batch_step in range(Config.BATCH_SIZE):
            # Feed current state to the policy NN and get action and its probability
            actions, actions_logprob,mean,std = agent.get_action(state)
            # upload 시 미반영
            
            # Use given action and retrieve new state, reward agent recieved and whether episode is finished flag
            env.setAction(actions.tolist()[0])

            time.sleep(Config.TIME_INTERVAL)

            # get next state
            next_state = np.zeros(state_size)
            try :
                next_state = env.getState()
                next_state = np.reshape(next_state, [1, state_size])
            except :
                print("getState error")
                break

            try :
                reward, done, success = env.getReward()
            except :
                print("getReward error")
                break

            rewards.append(reward)
            score += reward
            score_batch += reward

            # Store step information to memory for future use
            agent.add_to_memory(state, actions, actions_logprob, next_state, reward, done, n_batch_step)
            state = next_state

            if done:
                episode_success.append(success)
                writer.add_scalar('score_episode', score, episode)
                success_rate = np.mean(episode_success[-min(20, len(episode_success)):])
                writer.add_scalar('success_rate', success_rate, episode)
                # 저장 경로 확인
                filePath = './models/' + folderName
                if not os.path.isdir(filePath):
                    os.makedirs(filePath)

                episode += 1
                print("episode:", episode, "  score:", score, "success_rate:",
                      success_rate)  

                if np.mean(episode_success[-min(20, len(episode_success)):]) == 1.0:
                    torch.save({
                        'model': agent.agent_control.policy_nn.state_dict(),
                        'optimizer': agent.agent_control.optimizer_policy.state_dict()
                    }, "./models/" + folderName + "model_"+ str(episode) + "_"+"model_best.tar")
                    sys.exit(0) # 다중타겟

                env.reset()
                state = env.getState()
                state = np.reshape(state, [1, state_size])
                score = 0

        # For value (critic) function clipping, we need NN output before update, which we will use as baseline to see
        # how much new output is different and to clip it if its too much different
        agent.calculate_old_value_state()

        # Calculate advantage for policy NN loss
        agent.calculate_advantage()

        # Instead of shuffling whole memory, we will create indices and shuffle them after each update
        batch_indices = np.arange(Config.BATCH_SIZE)

        env.setAction([0,0,0,0,0,0])
        for _ in range(Config.UPDATE_STEPS):
            np.random.shuffle(batch_indices)
            # Split the memory to mini-batches and use them to update NNs
            for i in range(0, Config.BATCH_SIZE, Config.MINIBATCH_SIZE):
                agent.update(batch_indices[i: i + Config.MINIBATCH_SIZE])

        # Record losses and rewards and print them to console and SummaryWriter for nice Tensorboard graphs
        agent.record_results(n_step, writer, rewards, score_batch, episode)

    if writer is not None:
        writer.close()
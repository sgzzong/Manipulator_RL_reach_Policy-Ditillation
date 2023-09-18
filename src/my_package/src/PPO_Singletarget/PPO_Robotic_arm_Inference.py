#! /usr/bin/env python3
# -*- coding: utf-8 -*-
import numpy as np
import torch
import time 

import Config
import Agent
from Env import *

if __name__ == "__main__":
    # Create agent which will use PPO to train NNs
    agent = Agent.Agent(state_size=Config.STATE_SIZE, action_size=Config.ACTION_SIZE, batch_size=Config.BATCH_SIZE)
    
    # Integrated with Unity Simulator
    env = Ned2_control()
    
    # episode 별 검증
    checkpoint = torch.load("models/None_Preprocessing_PPO_Studnet_256*128*64->128*64*32_8.30_9.55.551000/model_220.tar", map_location=lambda storage, loc: storage)
    agent.agent_control.policy_nn.load_state_dict(checkpoint['model'])

    for episode in range(20):
        done = False
        score = 0

        # get Initial State     
        state = env.getState()
        state = np.reshape(state, [1, Config.STATE_SIZE])

        while not done:
            # Feed current state to the policy NN and get action and its probability
            actions, actions_logprob, mean, std = agent.get_action(state)
            
            # Use given action and retrieve new state, reward agent recieved and whether episode is finished flag
            env.setAction(actions.tolist()[0])
            time.sleep(Config.TIME_INTERVAL)

            # get next state
            next_state = np.zeros(Config.STATE_SIZE)
            next_state = env.getState()
            next_state = np.reshape(next_state, [1, Config.STATE_SIZE])

            # get reward, done
            reward, done, success = env.getReward()
            reward = float(reward)
            score += reward
            
            state = next_state

            if done:
                if success == 1:
                    print("mission success")
                else :
                    print("not success")
                env.reset()
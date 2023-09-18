#! /usr/bin/env python3
# -*- coding: utf-8 -*-
import datetime

MODE = 'Teacher'
ENV_NAME = 'ned2'
SEED = 9
NUMBER_OF_STEPS = 10000 # probati 500, 600, 700, 800, ... 1500
BATCH_SIZE = 2048
MINIBATCH_SIZE = 32
UPDATE_STEPS = 10
REPLAY_SIZE = 1000
GAE = True
GAMMA = 0.99
LAMBDA = 0.8
pd_buffer_size = 1000 #500
pd_sample_size = 100 #100
STATE_SIZE = 12
ACTION_SIZE = 3

wpa_point = 1
Clutch_factor = 0.98
TIME_INTERVAL = 0.03
hidden_size_1 = 256
hidden_size_2 = 128
hidden_size_3 = 64
Student_hidden_size_1 = 128
Student_hidden_size_2 = 64
Student_hidden_size_3 = 32
CLIPPING_EPSILON = 0.2
LEARNING_RATE_POLICY = 0.0002 #0.0002
LEARNING_RATE_CRITIC = 0.0003
ANNEAL_LR = True
MAX_GRAD_NORM = 0.5
EPSILON_START = 1e-5
EPSILON_END = 1e-8

ENTROPY_COEF = 0.01
ENV_SCALE_CROP = True

WRITER_FLAG = True

# ---------------------------------------- Output -----------------------------------------------
gae = 'gae' + str(LAMBDA) if GAE else ''
anneal = 'decay' if ANNEAL_LR else ''
env = 'env_scaled' if ENV_SCALE_CROP else ''
now = datetime.datetime.now()
date_time = "{}.{}_{}.{}.{}".format(now.month, now.day, now.hour, now.minute, now.second)
WRITER_NAME = '0.15_PPO_' +str(MODE)+ '_' + str(hidden_size_1) +'*'+ str(hidden_size_2) +'*'+ str(hidden_size_3) +'_' + date_time
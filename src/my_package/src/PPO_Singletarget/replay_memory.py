import random
import numpy as np
import os
import pickle
import torch
class ReplayMemory:
    def __init__(self, capacity):
        self.capacity = capacity
        self.buffer = []
        self.position = 0
    def push_teacher_data(self, state, action, reward, done):
        if len(self.buffer) < self.capacity:
            self.buffer.append(None)
        self.buffer[self.position] = (state, action, reward, done)
        self.position = (self.position + 1) % self.capacity #1000000사이즈의 버퍼를 순회하기 위한 변수

    def push(self, state, action, mean, std, done): #상태, 행동, 보상, 다음 상태, mask(실제로 목표에 도달했는지)
        if len(self.buffer) < self.capacity: # 1000000사이즈 보다 버퍼의 크기가 작을 경우
            self.buffer.append(None) #버퍼에 공간 추가
        self.buffer[self.position] = (state, action, mean, std, done) #버퍼에 현재 상태, 행동, 보상, 다음 상태, mask(실제로 목표에 도달했는지)에 대한 정보를 전송
        self.position = (self.position + 1) % self.capacity #1000000사이즈의 버퍼를 순회하기 위한 변수

    def sample(self, batch_size):
        batch = random.sample(self.buffer, batch_size) #버퍼에서 배치 사이즈 만큼의 경험을 무작위로 추출하여 배치에 저장( 배치 사이즈는 4096 * 4 )
        #state, action, reward, next_state, done = map(np.stack, zip(*batch)) #배치의 경험을 각각의 요소로 분리하여 저장
        state, action, reward, next_state, done = map(lambda x: np.stack([i.detach().cpu().numpy() if torch.is_tensor(i) else i for i in x]), zip(*batch))
        return state, action, reward, next_state, done

    def __len__(self):
        return len(self.buffer)

    def save_buffer(self, env_name, suffix="", save_path=None):
        if not os.path.exists('checkpoints/'):
            os.makedirs('checkpoints/')

        if save_path is None:
            save_path = "checkpoints/sac_buffer_{}_{}".format(env_name, suffix)
        print('Saving buffer to {}'.format(save_path))

        with open(save_path, 'wb') as f:
            pickle.dump(self.buffer, f)

    def load_buffer(self, save_path):
        print('Loading buffer from {}'.format(save_path))

        with open(save_path, "rb") as f:
            self.buffer = pickle.load(f)
            self.position = len(self.buffer) % self.capacity

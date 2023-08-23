#! /usr/bin/env python3
# -*- coding: utf-8 -*-
import Config
import Memory
import numpy as np
import NN
import torch

class Agent:
    # Role of Agent class is to coordinate between AgentControll where we do all calculations
    # and Memory where we store all of the data
    def __init__(self, state_size, action_size, batch_size):
        self.agent_control = AgentControl(state_size=state_size, action_size=action_size)
        self.memory = Memory.Memory(state_size, action_size, batch_size)
        self.policy_loss_m = []
        self.critic_loss_m = []
        self.policy_loss_mm = [0] * 100
        self.critic_loss_mm = [0] * 100
        self.ep_count = 0

    def set_optimizer_lr_eps(self, n_step):
        self.agent_control.set_optimizer_lr_eps(n_step)

    def get_action(self, state):
        actions, actions_logprob, mean, std = self.agent_control.get_action(state)
        return actions.cpu().detach().numpy(), actions_logprob, mean, std

    def add_to_memory(self, state, action, actions_logprob, new_state, reward, done, n_batch_step):
        self.memory.add(state, action, actions_logprob, new_state, reward, done, n_batch_step)

    def calculate_old_value_state(self):
        # Get NN output from collected states and pass it to the memory
        self.memory.set_old_value_state(self.agent_control.get_critic_value(self.memory.states).squeeze(-1).detach())

    def calculate_advantage(self):
        # For basic advantage function we have to calculate future rewards we got from each state, where reward from
        # last state is estimation (since we only know rewards in steps we took, not after), discount them and
        # subtract from baseline which in this case will be estimated value of each state.
        # GAE advantage gives us to decide we want each state advantage to be calculated with
        # reward + estimate(next state) - estimate(state) which has low variance but high bias or with
        # reward + gamma*next_reward + ... + gamma^n * estimate(last next state) - estimate(state) which has high
        # variance but low bias. We can decide to calculate advantage with somethig between those two and Config.LAMBDA
        # will be hyperparameter for that
        values = self.agent_control.get_critic_value(self.memory.states).squeeze(-1).detach()
        if Config.GAE:
            next_values = self.agent_control.get_critic_value(self.memory.new_states).squeeze(-1).detach()
            self.memory.calculate_gae_advantage(values, next_values)
        else:
            next_value = self.agent_control.get_critic_value(self.memory.new_states[-1]).squeeze(-1).detach()
            self.memory.calculate_advantage(next_value, values)

    def update(self, indices):
        # Main PPO point is updating policy NN. This is done by calculating derivative of loss function and doing
        # gradient descent. First we have to calculate ratio. Second to find minimum between ratio*advantage and
        # clipped_ratio*advantage. Third to find mean of Config.MINIBATCH_SIZE losses.

        # To calculate ratio we need new and old action probability. We already have old when we fed states to
        # policy NN when we wanted to get action from it. We can get new action probabilities if we give same states
        # but also actions we got. With states NN can create Normal distribution and with action he will sample the same
        # part of distribution, but now with different probability because Normal distribution is different.
        new_action_logprob, entropy = self.agent_control.calculate_logprob(self.memory.states[indices], self.memory.actions[indices])
        ratios = self.agent_control.calculate_ratio(new_action_logprob, self.memory.action_logprobs[indices])
        policy_loss = self.agent_control.update_policy(self.memory.advantages[indices], ratios, entropy)
        # Similar to ratio in policy loss, we also clipped values from critic. For that we need old_value_state which
        # represent old estimate of states before updates.
        critic_loss = self.agent_control.update_critic(self.memory.gt[indices], self.memory.states[indices], self.memory.old_value_state[indices])

        # Calculating mean losses for statistics
        self.policy_loss_m.append(policy_loss.detach().item())
        self.critic_loss_m.append(critic_loss.detach().item())

    def record_results(self, n_step, writer, reward_batch, score_batch, episode):
        self.policy_loss_mm[n_step % 100] = np.mean(self.policy_loss_m)
        self.critic_loss_mm[n_step % 100] = np.mean(self.critic_loss_m)
        print("Step " + str(n_step) + "/" + str(Config.NUMBER_OF_STEPS) + " Mean 100 policy loss: " + str(
            np.round(np.mean(self.policy_loss_mm[:min(n_step + 1, 100)]), 4)) + " Mean 100 critic loss: " + str(
            np.round(np.mean(self.critic_loss_mm[:min(n_step + 1, 100)]), 4)) + " Mean reward: " + str(
            np.round(np.mean(reward_batch), 2))) 
        
        if Config.WRITER_FLAG:
            writer.add_scalar('pg_loss', np.mean(self.policy_loss_m), n_step)
            writer.add_scalar('vl_loss', np.mean(self.critic_loss_m), n_step)
            writer.add_scalar('mean_reward', np.round(np.mean(reward_batch), 2), n_step)
            writer.add_scalar('score_batch', np.round(score_batch, 2), n_step)

        self.critic_loss_m = []
        self.policy_loss_m = []
        self.ep_count = episode
class Student_model:
    def __init__(self, state_size, action_size):
        self.device = 'cuda' if torch.cuda.is_available() else 'cpu'
        self.policy_nn = NN.Student_PolicyNN(state_size, action_size, Config).to(self.device)
        self.optimizer_policy = torch.optim.Adam(params=self.policy_nn.parameters(), lr=Config.LEARNING_RATE_POLICY, eps=Config.EPSILON_START)

    def set_optimizer_lr_eps(self, n_step):
        # Annealing the rate if instructed to do so.
        if Config.ANNEAL_LR:
            frac = 1.0 - n_step / Config.NUMBER_OF_STEPS
            lr_policy = frac * Config.LEARNING_RATE_POLICY
            self.optimizer_policy.param_groups[0]["lr"] = lr_policy

    def get_action(self, state):
        actions, actions_logprob, _, mean, std = self.policy_nn(torch.tensor(state, dtype=torch.float, device=self.device))
        return actions, actions_logprob, mean, std

class AgentControl:

    def __init__(self, state_size, action_size):
        self.device = 'cuda' if torch.cuda.is_available() else 'cpu'
        self.policy_nn = NN.PolicyNN(state_size, action_size, Config).to(self.device)
        self.critic_nn = NN.CriticNN(input_shape=state_size).to(self.device)
        self.optimizer_policy = torch.optim.Adam(params=self.policy_nn.parameters(), lr=Config.LEARNING_RATE_POLICY, eps=Config.EPSILON_START)
        self.optimizer_critic = torch.optim.Adam(params=self.critic_nn.parameters(), lr=Config.LEARNING_RATE_CRITIC, eps=Config.EPSILON_START)
        self.loss_critic = torch.nn.MSELoss()

    def set_optimizer_lr_eps(self, n_step):
        # Annealing the rate if instructed to do so.
        if Config.ANNEAL_LR:
            frac = 1.0 - n_step / Config.NUMBER_OF_STEPS
            lr_policy = frac * Config.LEARNING_RATE_POLICY
            lr_critic = frac * Config.LEARNING_RATE_CRITIC
            self.optimizer_policy.param_groups[0]["lr"] = lr_policy
            self.optimizer_critic.param_groups[0]["lr"] = lr_critic

        self.optimizer_critic.param_groups[0]["eps"] = Config.EPSILON_START - n_step * (Config.EPSILON_START - Config.EPSILON_END) / Config.NUMBER_OF_STEPS

    def get_action(self, state):
        actions, actions_logprob, _,mean,std = self.policy_nn(torch.tensor(state, dtype=torch.float, device=self.device))
        #_, _, _,mean,std = self.policy_nn.forward(state)
        return actions, actions_logprob, mean, std

    def get_critic_value(self, state):
        return self.critic_nn(state)

    def calculate_logprob(self, states, actions):
        _, new_actions_logprob, entropy,_ ,_ = self.policy_nn(states, actions)
        return new_actions_logprob, entropy

    def calculate_ratio(self, new_action_logprob, action_logprobs):
        # Since probabilites are log probabilities and we have to calculate ratio, we can simply subtract logs of new
        # and old. Before that, because we have 4 actions and not 1, we have to calculate joint probability which will
        # represent single action in R^4. Since actions are independent, the joint probability will be a product of
        # the probabilites. Product of probs is equal to sum of log probs. At the end we need to e^log prob to get prob.
        return torch.exp(torch.sum(new_action_logprob, dim=1) - torch.sum(action_logprobs, dim=1).detach())

    def update_policy(self, advantages, ratios, entropy):
        # Normalize the advantages to reduce variance
        advantages_norm = (advantages - advantages.mean()) / (advantages.std() + 1e-8)
        policy_loss = torch.minimum(ratios * advantages_norm, torch.clamp(ratios, 1-Config.CLIPPING_EPSILON, 1+Config.CLIPPING_EPSILON) * advantages_norm)
        policy_loss = -policy_loss.mean()
        policy_loss -= entropy.mean() * Config.ENTROPY_COEF

        self.optimizer_policy.zero_grad()
        policy_loss.backward()
        # The gradients of the policy network are clipped so that the “global l2 norm” (i.e. the norm of the
        # concatenated gradients of all parameters) does not exceed 0.5
        torch.nn.utils.clip_grad_norm_(self.policy_nn.parameters(), Config.MAX_GRAD_NORM)
        self.optimizer_policy.step()
        return policy_loss

    def update_critic(self, gt, states, old_value_state):
        # We need to calculate regular loss where we just find squared difference between estimated value and return
        estimated_value = self.critic_nn(states).squeeze(-1)
        critic_loss1 = torch.square(estimated_value - gt)
        # and we need to calculate clipped loss where estimated value is replaced with old estimated value + clipped difference
        estimated_value_clipped = old_value_state + torch.clamp(self.critic_nn(states).squeeze(-1) - old_value_state, - Config.CLIPPING_EPSILON, Config.CLIPPING_EPSILON)
        critic_loss2 = torch.square(estimated_value_clipped - gt)
        # Compare two losses and take bigger and calculate mean to get final critic loss
        critic_loss = 0.5 * (torch.maximum(critic_loss1, critic_loss2)).mean()

        self.optimizer_critic.zero_grad()
        critic_loss.backward()
        # The gradients of the value (critic) network are clipped so that the “global l2 norm” (i.e. the norm of the
        # concatenated gradients of all parameters) does not exceed 0.5
        torch.nn.utils.clip_grad_norm_(self.critic_nn.parameters(), Config.MAX_GRAD_NORM)
        self.optimizer_critic.step()
        return critic_loss


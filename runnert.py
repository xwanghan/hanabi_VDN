import numpy as np
import os
from common.rollout import RolloutWorker, CommRolloutWorker
from agent.agent import Agents, CommAgents
from common.replay_buffer import ReplayBuffer
import matplotlib.pyplot as plt
import time


class Runner:
    def __init__(self, env, args):
        self.env = env

        if args.alg.find('commnet') > -1 or args.alg.find('g2anet') > -1:  # communication agent
            self.agents = CommAgents(args)
            self.rolloutWorker = CommRolloutWorker(env, self.agents, args)
        else:  # no communication agent
            self.agents = Agents(args)
            self.rolloutWorker = RolloutWorker(env, self.agents, args)
        if not args.evaluate and args.alg.find('coma') == -1 and args.alg.find('central_v') == -1 and args.alg.find(
                'reinforce') == -1:  # these 3 algorithms are on-poliy
            self.buffer = ReplayBuffer(args)
        self.args = args
        self.win_rates = []
        self.episode_rewards = []
        self.loss = []

        # 用来保存plt和pkl
        self.save_path = self.args.result_dir + '/' + args.alg + '/' + args.map
        if not os.path.exists(self.save_path):
            os.makedirs(self.save_path)

    def run(self, num):
        time_steps, train_steps, evaluate_steps = 0, 0, -1
        loss_sum = 0
        while train_steps < self.args.n_steps:
            print('Run {}, time_steps {}, train_steps {}, epochs {}'.format(num, time_steps, train_steps,
                                                                            int(train_steps / self.args.train_steps)))

            start1 = time.perf_counter()
            if train_steps // (self.args.evaluate_cycle * self.args.train_steps) > evaluate_steps:
                win_rate, episode_reward = self.evaluate()
                # print('win_rate is ', win_rate)
                self.loss.append(loss_sum / (self.args.evaluate_cycle * self.args.train_steps))
                loss_sum = 0
                self.win_rates.append(win_rate)
                self.episode_rewards.append(episode_reward)
                self.plt(num)
                evaluate_steps += 1
            # episodes = []
            # 收集self.args.n_episodes个episodes
            end1 = time.perf_counter()
            print("final is in : %s Seconds " % (end1 - start1))

            start1 = time.perf_counter()
            for episode_idx in range(self.args.n_episodes):
                start0 = time.perf_counter()
                episode, _, _, steps = self.rolloutWorker.generate_episode(episode_idx)
                end0 = time.perf_counter()
                print("generate cost : %s Seconds " % (end0 - start0))

                start0 = time.perf_counter()
                self.buffer.store_episode(episode)
                end0 = time.perf_counter()
                print("buffer cost : %s Seconds " % (end0 - start0))
                time_steps += steps
                # print(_)
            '''# episode的每一项都是一个(1, episode_len, n_agents, 具体维度)四维数组，下面要把所有episode的的obs拼在一起
            episode_batch = episodes[0]
            episodes.pop(0)
            for episode in episodes:
                for key in episode_batch.keys():
                    episode_batch[key] = np.concatenate((episode_batch[key], episode[key]), axis=0)
            if self.args.alg.find('coma') > -1 or self.args.alg.find('central_v') > -1 or self.args.alg.find('reinforce') > -1:
                self.agents.train(episode_batch, train_steps, self.rolloutWorker.epsilon)
                train_steps += 1
            else:
                self.buffer.store_episode(episode_batch)'''
            end1 = time.perf_counter()
            print("final is in : %s Seconds " % (end1 - start1))

            start1 = time.perf_counter()
            for train_step in range(self.args.train_steps):
                start0 = time.perf_counter()
                mini_batch = self.buffer.sample(min(self.buffer.current_size, self.args.batch_size))
                end0 = time.perf_counter()
                print("sample cost : %s Seconds " % (end0 - start0))
                start0 = time.perf_counter()
                loss = self.agents.train(mini_batch, train_steps)
                end0 = time.perf_counter()
                print("train cost : %s Seconds " % (end0 - start0))
                train_steps += 1
                loss_sum += loss
            end1 = time.perf_counter()
            print("final is in : %s Seconds " % (end1 - start1))

        self.loss.append(loss_sum/self.args.train_steps)
        win_rate, episode_reward = self.evaluate()
        print('win_rate is ', win_rate)
        self.win_rates.append(win_rate)
        self.episode_rewards.append(episode_reward)
        self.plt(num)

    def evaluate(self):
        win_number = 0
        episode_rewards = 0
        for epoch in range(self.args.evaluate_epoch):
            _, episode_reward, win_tag, _ = self.rolloutWorker.generate_episode(epoch, evaluate=True)
            episode_rewards += episode_reward
            if win_tag:
                win_number += 1
        return win_number / self.args.evaluate_epoch, episode_rewards / self.args.evaluate_epoch

    def plt(self, num):
        plt.figure()
        # plt.ylim([0, 105])
        plt.cla()
        plt.subplot(3, 1, 1)
        plt.plot(range(len(self.win_rates)), self.win_rates)
        plt.ylabel('win_rates')

        plt.subplot(3, 1, 2)
        plt.plot(range(len(self.episode_rewards)), self.episode_rewards)
        plt.ylabel('episode_rewards')

        plt.subplot(3, 1, 3)
        plt.plot(range(len(self.loss)), self.loss)
        plt.xlabel('epochs*{}'.format(self.args.evaluate_cycle))
        plt.ylabel('loss')

        plt.savefig(self.save_path + '/plt_{}.png'.format(num), format='png')
        np.save(self.save_path + '/win_rates_{}'.format(num), self.win_rates)
        np.save(self.save_path + '/episode_rewards_{}'.format(num), self.episode_rewards)
        np.save(self.save_path + '/loss_{}'.format(num), self.loss)
        plt.close()

## Quick Start

```shell
$ python3 main.py --alg=vdn --cuda=True
$ python3 main.py --alg=maven --cuda=True
```
```shell
$ python3 main.py --alg=vdn --cuda=True --evaluate=True
```

```

-- 问题：
1.  原本smac中，一个回合所有智能体进行动作，因此可以经rollout在buffer中保存 (self.episode_limit, self.n_agents, self.obs_shape) 的数据。
2.  目前由于hanabi游戏与smac等不同，一个回合多个agent轮流进行动作，因此可以看作一个state就只有一个智能体进行动作。
3.  原方案是数据减少一个维度，即 (self.episode_limit, 1, self.obs_shape) 或 (self.episode_limit, self.obs_shape)， 但根据hanabi-maven的实验效果得出此方案不可行。
4.  即使在网络输入size方面对应做出了修改，但应该由于训练时维度(1)目的保证了此输入与下一输入为同一agent，即此情况下rnn的h是不连贯的。
5.  因此，我们有必要将一个回合多个agent轮流进行的动作及其他信息在rollout进行整合，并输入buffer中。
6.  根据以上操作，出现了下一个bug：游戏会在一个回合未结束的情况下结束，即life_token小于0。 并且由于hanabi的每个单个智能体动作有r，不同于smac中动作组共享一个r，因此我们可以提高r维度。
7.  但由于我们是每一个回合为一组数据放入供多个agent同时学习，于是出现一个回合未结束的情况下游戏结束的这个回合数据如果放入此框架，可能会造成TD-error错误，因此我们选择放弃这个回合，mask掉。    -- 如图 mask掉最后一个回合经验
8.  r维度增加导致rl_loss计算出错，但是因为不涉及反向传递，我们直接注释掉
9.  对于单个动作的r，为出对一张牌为1，其他如出错牌、传递信息、弃牌为0，出错牌导致游戏结束为负的场上不构成烟花的牌数。
10. 因此训练初期，智能体的episode_reward曲线应该会在较低浮动，
11. 对于episode_limit，一开始我们设置为10，也就是40步，但根据计算，最大可以进行约（50-(4*5))*2+8+3+25=96步，因此后设置为25。
12. 目前训练曲线出现无法上升的问题，猜测是由于最后一回合负r的经验被mask了。现重新去掉mask。                            -- 7.改回
13. epoch原本由time_steps来做单位，现改为train_steps，大约画图比例缩小5倍，即 5*train_steps = time_steps。
14. 现问题为epsiode_reward无法突破1，图中episode_reward为进行evaluate_epoch=32次游戏后采样得出平均值。
15. 此问题原因为目前为止没有explortion到出现烟花的结果，导致r反馈较低。


-- v2:
1.  相比于v1增加了pass动作38。
2.  取消注释                                                                                    -- 问题8.
3.  一个回合定义为当前agent一个动作其他agent pass动作，同时a_u也对应上当前可出动作(pass或其他动作)。        -- 问题5.
4.  减回r维度                                                                                   -- 问题6.
5.  episode_limit确定为100                                                                      -- 问题11.
6.  一个epoch的时间大大增加，判断原因应该在于episode_size变大,一个回合是更新4个参数(e.g. rnn的h)，不同于v1是只更新1个参数。
7.  改写了rl_env.get_avail_agent_actions() 函数，增加了一步pass动作(index = self.args.n_actions - 1)
8.  500 train_steps 1 evaluate，evaluate_epoch = 4。                                                     -- 如图 v2_bufferszie=100_trainsteps=1
9.  buffer_size = 100, train_steps = 10, n_steps = 1e8, anneal_steps = 50000                            -- 如图 train_steps = 10_186060

-- vdn:
1.  buffer_size = 100, train_steps = 1, n_steps = 1e8, anneal_steps = 50000, evaluate_epoch = 32
2.  reward持续大于0，但是仍没有明显上升趋势。猜测可能与epsilon有关。
3.  目前 epsilon_anneal_scale = 'step'， anneal_steps = 50000， args.min_epsilon = 0.05 训练了100000 epochs             -- 如图 vdn图1
4.  改进 epsilon_anneal_scale = 'episode'， anneal_steps = 5000， args.min_epsilon = 0.2                               -- 如图 anneal_steps = 5000
5.  预计此操作会增加训练速率 batch_size =32--64，如还需增加 batch_size，则应该使 buffer_size > 128。但不会提升代码效率。

--  maven:
1.  延续上述操作及参数。           -- 如图 1

-- vdn:
1.  epsilon_anneal_scale = 'episode'， anneal_steps = 50000， args.min_epsilon = 0.05             -- 如图 episode
2.  rollout 中 a_u_next for last obs 不再为全pass。
3.  改回epsilon_anneal_scale = 'episode'， anneal_steps = 5000， args.min_epsilon = 0.2            -- 如图 1anneal_steps = 5000
4.  lr = 5e-5                                                                                    -- 如图 lr = 5e-5    
5.  epsilon_anneal_scale = 'episode'， anneal_steps = 50000， args.min_epsilon = 0.05             -- 如图 -5episode
6.  lr = 5e-6                                                                                    -- 如图 lr = 5e-6    
7.  lr = 5e-5, batch_size = 32, buffer_size = 256                                                -- 如图 原epsilon
8.  epsilon_anneal_scale = 'episode'， anneal_steps = 3e6， args.min_epsilon = 0.2                -- 如图 anneal_steps = 3e6， args.min_epsilon = 0.2
9.  虽然没有训练到sad论文中的72h，但reward曲线总是停留在较低水平上，估计收敛在了局部最优上。

--  maven:
1.  maven 高效探索。                                                                     -- 如图 2
2.  epsilon = 0.5, min_epsilon = 0.02, anneal_steps = 5e4, episode_limit = 80, 
    buffer_size = 256, n_episodes = 32, train_steps = 32, evaluate_cycle = 512         -- 如图 3
    
-- vdn:
1.  epsilon = 0.5, min_epsilon = 0.02, anneal_steps = 5e4, episode_limit = 80, 
    buffer_size = 200, n_episodes = 20, train_steps = 20, evaluate_cycle = 500                  -- 如图 4
2.  epsilon = 0.5, min_epsilon = 0.05, anneal_steps = 5e5, episode_limit = 80, 
    buffer_size = 200, n_episodes = 100, train_steps = 100, evaluate_cycle = 500  
                  
    ***runner for off poilcy        runner1 for on poilcy      第48行改动大幅缩减内存消耗并加速*** 
    
                                                                                                -- 如图 5
--maven:
1.  参数同上                            -- 如图 6

--vdn:
1.  输出loss调试，参数不改loss较大。
    buffer_size = 200, n_episodes = 40, train_steps = 200, evaluate_cycle = 500                 -- 如图 6
2.  evaluate_cycle=self.args.evaluate_cycle*self.args.train_steps evaluate_cycle = 5            -- 如图 7
3.  buffer_size = 200, n_episodes = 20, train_steps = 20, evaluate_cycle = 1
    添加win_rate，目前win=episode_reward>0  没有出现reward=6的情况。                                 -- 如图 8
4.  gamma = 0.99 ---> 0.999                                                                     -- 如图 9
5.  epsilon = 0.5, min_epsilon = 0.02, anneal_steps = 5e4, episode_limit = 80,
    gamma = 0.999 ---> 0.9                                                                      -- 如图 10
    gamma = 0.999  
    运行到3000，发现由于win rate降低，导致reward下降，正确方向应该是提高win时reward，但此训练纠结于局部最优，
    学回去，将win rate上升，win时reward下降                                                         -- 如图 11
    
6.  last_action 改为上一回合动作                                                                   -- 如图 12
7.  仅VDN 添加 Adam 52 行
        if args.optimizer == "Adam":
            self.optimizer = torch.optim.Adam(self.eval_parameters, lr=args.lr, eps=1.5e-05)
    last_action 改为上一回合动作    target_update_cycle = 200 ---> 2000
    buffer_size = 200, n_episodes = 10, train_steps = 10, evaluate_cycle = 10
    optimizer = Adam   lr = 6.25e-5    rnn_hidden_dim = 512                                     -- 如图 13
8.  图13效果及其不佳，选择较小环境 
    env = rl_env.make('Hanabi-Small', num_players=2)                                            
    buffer_size = 2000 evaluate_cycle=100 
    增加 win_tag = 0                                                                             -- 如图 s-1
9.  增加loss图示: (改动 runner.py agent.py vdn.py)
    evaluate_cycle = 1   buffer_size = 1000         target_update_cycle = 100
    rnn_hidden_dim = 64  target_update_cycle = 100  lr = 6.25e-5                                
    epsilon = 0.3   min_epsilon = 0.1   anneal_steps = 5e5                                      -- 如图 s-2 与 s-s2仅有lr不同                
10. rnn_layer = 2: (改动 base_net.py)                                                            -- 如图 s-3
11. evaluate_cycle = 100    evaluate_epoch = 256                                                -- 如图 s-4
12. loss 重新定义，为过去epochs中所有episode的平均loss，不再是当前计算epoch前一个平均loss
    rnn 层数增加，其hi也会增加，之前版本hi取的最后一个，此版本取全部。
    改动 base_net.py      vdn.py-172行     agent.py-56 70 72行
    rnn_hidden_dim = 512    anneal_steps = 5e6   save_cycle = 50000  target_update_cycle = 2500 -- 如图 s-5
13. map=hanabi  player=3     
14. runner 添加 time_cost
    self.optimizer.zero_grad(set_to_none=True)
    agent choose_action时，with torch.no_grad():    




```
"# hanabi_master" 
"# hanabi_master" 

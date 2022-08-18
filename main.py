from runner import Runner
from hanabi_learning_environment import rl_env
from common.arguments import get_common_args, get_coma_args, get_mixer_args, get_centralv_args, get_reinforce_args, \
    get_commnet_args, get_g2anet_args

if __name__ == '__main__':
    for i in range(8):
        args = get_common_args()
        if args.alg.find('coma') > -1:
            args = get_coma_args(args)
        elif args.alg.find('central_v') > -1:
            args = get_centralv_args(args)
        elif args.alg.find('reinforce') > -1:
            args = get_reinforce_args(args)
        else:
            args = get_mixer_args(args)
        if args.alg.find('commnet') > -1:
            args = get_commnet_args(args)
        if args.alg.find('g2anet') > -1:
            args = get_g2anet_args(args)
        env = rl_env.make(args.map, num_players=args.player)
        args.n_actions = env.num_moves()+1
        args.n_agents = args.player
        args.state_shape = env.vectorized_observation_shape()[0]*args.n_agents
        args.obs_shape = env.vectorized_observation_shape()[0]
        args.episode_limit = 80
        runner = Runner(env, args)
        if not args.evaluate:
            runner.run(i)
        else:
            win_rate, _ = runner.evaluate()
            print('The win rate of {} is  {}'.format(args.alg, win_rate))
            break

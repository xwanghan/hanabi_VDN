import torch.nn as nn
import torch.nn.functional as f
import torch


class RNN(nn.Module):
    # Because all the agents share the same network, input_shape=obs_shape+n_actions+n_agents
    def __init__(self, input_shape, args):
        super(RNN, self).__init__()
        self.args = args

        self.fc1 = nn.Linear(input_shape, args.rnn_hidden_dim)
        self.rnn = nn.ModuleList()
        for i in range(self.args.rnn_layer):
            self.rnn.append(nn.GRUCell(args.rnn_hidden_dim, args.rnn_hidden_dim))
        self.fc2 = nn.Linear(args.rnn_hidden_dim*self.args.rnn_layer, args.n_actions)

    def forward(self, obs, hidden_state):
        x = f.relu(self.fc1(obs))
        h = []
        for i in range(self.args.rnn_layer):
            hi = hidden_state[i].reshape(-1, self.args.rnn_hidden_dim)
            ho = self.rnn[i](x, hi)
            h.append(ho)
        h = torch.cat(h, 1)
        q = self.fc2(h)
        h = h.reshape(self.args.rnn_layer, -1, self.args.rnn_hidden_dim)
        return q, h


# Critic of Central-V
class Critic(nn.Module):
    def __init__(self, input_shape, args):
        super(Critic, self).__init__()
        self.args = args
        self.fc1 = nn.Linear(input_shape, args.critic_dim)
        self.fc2 = nn.Linear(args.critic_dim, args.critic_dim)
        self.fc3 = nn.Linear(args.critic_dim, 1)

    def forward(self, inputs):
        x = f.relu(self.fc1(inputs))
        x = f.relu(self.fc2(x))
        q = self.fc3(x)
        return q

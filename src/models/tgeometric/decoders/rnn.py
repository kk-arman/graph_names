import torch
from torch import nn
import torch.nn.functional as F

class RNN(nn.Module):
    def __init__(self, vocabulary, input_size, hidden_size, num_layers):
        super(RNN, self).__init__()
        self.hidden_size = hidden_size
        self.num_layers = num_layers
        self.max_label_length = vocabulary.max_name_length + 1

        self.gru = nn.GRU(input_size, hidden_size, num_layers)
        self.out = nn.Linear(hidden_size, vocabulary.size)
        self.softmax = nn.LogSoftmax(dim = -1)
        
    def device(self):
        return self.out.bias.device
        
    def forward(self, x):
        batch_size = torch.tensor([x.size(0)])
        h = self.init_hidden(batch_size)
        result = []
        
        for i in range(self.max_label_length):
            prediction, h = self.decode(x[None, :, :], h)
            result.append(prediction)
        return torch.stack(result, 1)
    
    def decode(self, embedd, hidden):
        output, hidden = self.gru(embedd, hidden)
        output = self.out(output)
        output = self.softmax(output)
        return torch.squeeze(output), hidden
    
    def init_hidden(self, num_graphs):
        return torch.zeros(self.num_layers, num_graphs.item(), self.hidden_size, device=self.device())

class GRUCellUnit(nn.Module):
    def __init__(self, input_feature_len, hidden_size, dropout=0.2):
        super().__init__()
        self.decoder_rnn_cell = nn.GRUCell(
            input_size=input_feature_len,
            hidden_size=hidden_size,
        )
        self.out = nn.Linear(hidden_size, hidden_size)
        self.attention = False
        self.dropout = nn.Dropout(dropout)

    def device(self):
        return self.out.bias.device

    def forward(self, prev_hidden, y):
        rnn_hidden = self.decoder_rnn_cell(y, prev_hidden)
        output = self.out(rnn_hidden)
        output = F.relu(output)
        return output, self.dropout(rnn_hidden)
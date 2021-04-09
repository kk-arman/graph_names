import torch
from torch import nn


class SimpleDecoder(nn.Module):
    def __init__(self, vocabulary, input_size, hidden_size=64):
        super(SimpleDecoder, self).__init__()
        self.max_label_length = vocabulary.max_name_length + 1
        self.hidden_size = hidden_size
        self.hidden_layer = nn.Linear(input_size+hidden_size, hidden_size)
        self.output_layer = nn.Sequential(
            nn.Linear(hidden_size, vocabulary.size),
            nn.LogSoftmax(dim=-1)
        )
        
    def device(self):
        return self.output_layer[0].bias.device
    
    def forward(self, x):
        batch_size = torch.tensor([x.size(0)])
        h = self.init_hidden(batch_size)
        result = []
        
        for i in range(self.max_label_length):
            prediction, h = self.decode(x, h)
            result.append(prediction)
        return torch.stack(result, 1)

    def decode(self, x, h):
        input_decoder = torch.cat((x, h), -1)
        h = self.hidden_layer(input_decoder)
        prediction = self.output_layer(h)
        return prediction, h

    def init_hidden(self, batch_size):
        return torch.zeros(batch_size.item(), self.hidden_size, device=self.device())


class SimpleDecoderModified(nn.Module):
    def __init__(self, vocabulary, input_size, hidden_size=64):
        super(SimpleDecoderImproved, self).__init__()
        self.max_label_length = vocabulary.max_name_length + 1
        self.hidden_size = hidden_size
        self.hidden_layer = nn.Linear(input_size+hidden_size, hidden_size)
        self.output_layer = nn.Sequential(
            nn.ReLU(),
            nn.Linear(hidden_size, hidden_size),
            nn.ReLU(),
            nn.Linear(hidden_size, vocabulary.size),
            nn.LogSoftmax(dim=-1)
        )
        
    def device(self):
        return self.output_layer[1].bias.device
    
    def forward(self, x):
        batch_size = torch.tensor([x.size(0)])
        h = self.init_hidden(batch_size)
        result = []
        
        for i in range(self.max_label_length):
            prediction, h = self.decode(x, h)
            result.append(prediction)
        return torch.stack(result, 1)

    def decode(self, x, h):
        input_decoder = torch.cat((x, h), -1)
        h = self.hidden_layer(input_decoder)
        prediction = self.output_layer(h)
        return prediction, h

    def init_hidden(self, batch_size):
        return torch.zeros(batch_size.item(), self.hidden_size, device=self.device())
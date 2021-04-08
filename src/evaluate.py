import sys
import os
from datetime import datetime
from pathlib import Path
from statistics import mean 
from tqdm import tqdm

os.environ["CUDA_DEVICE_ORDER"]="PCI_BUS_ID"   
os.environ["CUDA_VISIBLE_DEVICES"]="0"

import torch
from torch_geometric.data import DataLoader

current_folder_path = Path(__file__).parent.absolute()
src_folder = os.path.dirname(current_folder_path)
jtnames = os.path.dirname(src_folder)
sys.path.append(src_folder)

from models.tgeometric.dataset import TorchGeometricDataset
from models.tgeometric.vocabulary import Vocabulary
from models.ggcn_lightning import GGCNLightning
from data.scripts_for_filtration.method_name_tokenizer import tokenize
from metrics import get_sentence_model, get_sentence_similarity

from sklearn.metrics import f1_score

import json
#
# END OF IMPORTS
#

data_test = Path(jtnames  + '/data/processed/fn_graphs/test')

out_data = jtnames + '/data/processed/temp'
model_path = jtnames + '/models/model.ckpt'
vocabulary_path = jtnames + '/models/vocabulary'
metrics_file_path = jtnames + '/metrics/metrics.json'




def evaluate(model, test_loader, sentence_model_name = 'msmarco-distilbert-base-v2', device = 'cuda', log_similarity = False):
    sentence_model = get_sentence_model(sentence_model_name)
    # vocabulary = Vocabulary.load_from_path(vocabulary_path, tokenize)   
    test_index = vocabulary.token_encoder['test']
    if log_similarity: f = open('similarity_results' + datetime.now().strftime("%d/%m/%Y %H:%M") + '.txt', 'w')
    
    result = dict()
    model.to(device)

    similarities = []
    y_true = []
    y_pred = []
    for batch in tqdm(test_loader): 
        batch.to(device)
        out = model(batch.x_type, batch.x_attrs, batch.x_attrs_mask,  batch.edge_index, batch.edge_attr, torch.tensor([batch.num_graphs]), batch.batch)
        logits = out.argmax(2) #.masked_select(batch.y_mask)
        y = batch.y #.masked_select(batch.y_mask)

        for i in range(y.size(0)):
            result_truth=""
            result_predicted=""
            for j in range(y.size(1)):
                if y[i,j] == test_index and logits[i,j] == test_index: continue #if both start with test
                result_truth += vocabulary.inv_token_encoder[y[i,j].item()]+" "
                result_predicted += vocabulary.inv_token_encoder[logits[i,j].item()]+" "
                
            result_truth = result_truth[:result_truth.find('<EOS>')] 
            result_predicted = result_predicted[:result_predicted.find('<EOS>')]
            
            sim = get_sentence_similarity(result_predicted, result_truth, sentence_model)
            similarities.append(sim.item())
            
            if log_similarity: 
                f.write( "Truth:" + result_truth + "\nPrediction:" + result_predicted + "\nSimilarity:" + str(sim.item()) + '\n\n' )

        y_true.extend(y.masked_select(batch.y_mask).tolist())
        y_pred.extend(logits.masked_select(batch.y_mask).tolist())
    
    result['f1'] = f1_score(y_true, y_pred, average='micro')
    result['mean_similarity'] = mean(similarities)

    return result
    

vocabulary = Vocabulary.load_from_path(vocabulary_path, tokenize)
test_dataset = TorchGeometricDataset(data_test, vocabulary)

pad_index = vocabulary.token_encoder['<pad>']

test_loader =  DataLoader(test_dataset, batch_size=64, pin_memory=True, num_workers=1)

script = torch.jit.load(model_path)  
test_result =dict(eval = evaluate(script, test_loader))

print('test_result',test_result)


with open(metrics_file_path, 'w') as metrics_file:
    json.dump(test_result,metrics_file)

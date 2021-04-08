import javalang
from tqdm import tqdm
from collections import defaultdict
import sys
import os

dirname = os.path.dirname(__file__)
# filename = os.path.join(dirname, '../legacy/')
sys.path.append(dirname)

from project_parser import JProject
from method_name_tokenizer import tokenize 

pos_patterns = ['NOUN VERB NOUN','VERB NOUN', 'VERB NOUN NOUN',  'VERB NOUN NOUN NOUN',
'VERB NOUN NOUN PRON', 'ADJ NOUN NOUN VERB', 'VERB ADP NOUN', 'VERB VERB NOUN NOUN', 'NOUN VERB DET NOUN',
'NOUN VERB PRON', 'NOUN NOUN VERB ADV', 'VERB ADJ NOUN', 'VERB NOUN VERB NOUN',
'VERB ADV NOUN', 'NOUN PART VERB NOUN', 'ADJ NOUN ADJ VERB', 'NOUN VERB ADJ NOUN', 'VERB VERB NOUN', 'NOUN NOUN VERB',
'VERB NOUN ADJ', 'ADJ NOUN VERB', 'NOUN VERB', 'NOUN VERB NOUN NOUN', 'NOUN VERB VERB NOUN',
'VERB NOUN ADJ NOUN', 'PROPN VERB NOUN NOUN', 'VERB ADJ NOUN NOUN', 'VERB NOUN NOUN NOUN',
'ADJ VERB NOUN', 'NOUN NOUN VERB NOUN'] #MAYBE JUST VERB IN POS ???

def get_pos(nlp_pos, name):
    doc = nlp_pos(' '.join(name))
    pos = []
    for sentence in doc.sentences:
        for word in sentence.words:
            pos.append(word.pos)
    return pos
    

def check_method_v2(method, nlp_pos):
    pos_flag, length_flag = False, False

    name = tokenize(method.name)
    if 'test' in name: name.remove('test')
    if len(name) == 0: return False
   
    pos = get_pos(nlp_pos, name)
    pos_joined = " ".join(pos)
    if pos_joined in pos_patterns:
        pos_flag =  True
    if method._tree.body:
        if method.get_length() >= 4: #
            length_flag = True
            
    if all([pos_flag, length_flag]): return True
    return False


def check_method_v7(method, nlp_pos):
    pos_flag, length_flag = False, False

    name = tokenize(method.name)
    if 'test' in name: name.remove('test')
    if len(name) == 0: return False

    pos = get_pos(nlp_pos, name)
    if 'VERB' in pos and len(pos) <= 5:
        pos_flag =  True
    if method._tree.body:
        if method.get_length() >= 4:
            length_flag = True
            
    if all([pos_flag, length_flag]): return True
    return False

def switch_check_methods(key):
    if key == '2': return check_method_v2
    if key == '7': return check_method_v7

def get_good_methods(repo_path, nlp_pos, check_version = '7'):
    repo_parser = JProject(repo_path, True)
    good_methods =  defaultdict(list)
    check_method = switch_check_methods(check_version)

    for file in tqdm(repo_parser.files):
        if file.is_JUnit:
            for c in file.classes:
                for method in c.methods:
                    if method.is_test: #and len(method.asserts) <=2 : 
                        if check_method(method, nlp_pos): 
                            good_methods[str(file.path)].append(method.name)
    return good_methods


# from pathlib import Path
# import stanza
# nlp_pos = stanza.Pipeline('en', processors='tokenize,pos', use_gpu = True)
# good_methods = get_good_methods(Path('../../../data/raw/junit_top/lettuce-io-lettuce-core-8a4a321'), nlp_pos)
# print(len(good_methods))
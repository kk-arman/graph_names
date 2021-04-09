from sentence_transformers import SentenceTransformer, util
from statistics import mean
from rouge import Rouge 

_model = None
rouge = Rouge()

def get_sentences(logits, y, vocabulary, test_index):
    all_predicted = []
    all_trurh = []
    for i in range(y.size(0)):
        result_truth=""
        result_predicted=""
        for j in range(y.size(1)):        
            if y[i, j] == test_index and logits[i, j] == test_index:
                 continue 
            result_truth += vocabulary.inv_token_encoder[y[i, j].item()] + " "
            result_predicted += vocabulary.inv_token_encoder[logits[i, j].item()] + " "
        if result_truth == "": result_truth = " "
        if result_predicted == "": result_predicted = " "
        
        if "<EOS>" in result_predicted: result_predicted = result_predicted[:result_predicted.find('<EOS>')]
        if result_predicted == "": result_predicted = " "
        all_predicted.append(result_predicted)

        if "<EOS>" in result_truth: result_truth = result_truth[:result_truth.find('<EOS>')]
        if result_truth == "": result_truth = " "
        all_trurh.append(result_truth)
    return all_predicted, all_trurh


def set_sentence_model(model_name):
    """
    Paraphrase Identification:
        paraphrase-distilroberta-base-v1

    Semantic Textual Similarity:
        stsb-roberta-large - STSb performance: 86.39
        stsb-roberta-base - STSb performance: 85.44
        stsb-bert-large - STSb performance: 85.29
        stsb-distilbert-base - STSb performance: 85.16

    Information Retrieval:
        msmarco-distilroberta-base-v2: MRR@10: 28.55 on MS MARCO dev set
        msmarco-roberta-base-v2: MRR@10: 29.17 on MS MARCO dev set
        msmarco-distilbert-base-v2: MRR@10: 30.77 on MS MARCO dev set
    """
    global _model
    _model = SentenceTransformer(model_name)
    return _model

def get_sentence_similarity(prediction, ground_truth): 
    encoded_prediction = _model.encode(prediction)
    encoded_ground_truth = _model.encode(ground_truth)
    
    if encoded_prediction.ndim != encoded_ground_truth.ndim: 
        raise ValueError("Input should be two string or two arrays")
        
    if encoded_prediction.ndim == 1: return util.pytorch_cos_sim(encoded_prediction, encoded_ground_truth)
    return [util.pytorch_cos_sim(encoded_prediction[i], encoded_ground_truth[i]) for i in range(len(encoded_prediction))]    

def get_similarity(logits, y, vocabulary, test_index):
    similarities = []
    all_predicted, all_trurh = get_sentences(logits, y, vocabulary, test_index)
    for i in range(len(all_predicted)):
        sim = get_sentence_similarity(all_predicted[i], all_trurh[i])
        similarities.append(sim.item())
        
    return mean(similarities)

def get_rouge_scores(logits, y, vocabulary, test_index, avg = True):
    all_predicted, all_trurh = get_sentences(logits, y, vocabulary, test_index)
    # for i in range(len(all_predicted)):

    return rouge.get_scores(all_predicted, all_trurh, avg = avg)


def acc_without_test(pred, target, test_index): #masked pred and target. I doubt that there can be two test words in a center of sentence so it should be ok.
    correct = []
    total = 0
    for i in range(len(target)):
        if pred[i].item() == test_index and target[i].item() == test_index: continue
        correct.append(pred[i] == target[i])
        total += 1
    return sum(correct).float()/total
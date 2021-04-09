import os
import sys
import torch
import pytorch_lightning as pl

from pathlib import Path
from pytorch_lightning.loggers import TensorBoardLogger
from torch.utils.data import random_split

jtnames_src_path = Path(__file__).parent.resolve()
jtnames = jtnames_src_path.parent
sys.path.append(jtnames_src_path.as_posix())


from models.tgeometric.dataset import TorchGeometricDataset
from models.tgeometric.vocabulary import Vocabulary
from data.scripts_for_filtration.method_name_tokenizer import tokenize
from models.ggcn_lightning import GGCNLightning


data_train = jtnames  / 'data/train'
data_val = jtnames  / 'data/val'
data_test = jtnames  / 'data/test'

model_path = jtnames / 'models/model.ts'
vocabulary_path = jtnames / 'models/vocabulary.pkl'


hparams = {
    # Train hparams
    'max_epochs': 5,# trained on 40-50 epochs, 5 put to run on examples
    'batch_size': 8, # trained on 32 batches, 8 put to run on examples
    'es_mode': 'min',
    'es_patience': 20, # high patience to disable it
    'es_metric': 'val_loss',
    'lr': .005,
    'optimizer': 'Adam',
    'lr_scheduler': 'ReduceLROnPlateau',
    'lr_scheduler_metric': 'val_loss',
    # Model hparams
    'num_agg_steps': 5,
    'encoder_output_dim': 128,
    'encoder_step_norm': False,
    'node_type_embed_dim': 10,
    'node_attr_embed_dim': 10,
    'decoder': 'simple',
    'decoder_hidden_size': 20,
    'decoder_num_layers': 1,
    # Metrics configuration
    'sentence_encoder': 'msmarco-distilbert-base-v2',
}


def train(hparams):
    logger = TensorBoardLogger('tboard_logs', name='model')

    vocabulary = Vocabulary([data_train, data_test, data_val], tokenize)
    pad_index = vocabulary.token_encoder['<pad>']

    train_dataset = TorchGeometricDataset(data_train, vocabulary)
    val_dataset = TorchGeometricDataset(data_val, vocabulary)
    test_dataset = TorchGeometricDataset(data_test, vocabulary)

    model = GGCNLightning(vocabulary, 
                          pad_index,
                          hparams,
                          train_df=train_dataset,
                          val_df=val_dataset,
                          test_df=test_dataset)

    estop = pl.callbacks.early_stopping.EarlyStopping(
        monitor=hparams['es_metric'],
        patience=hparams['es_patience'],
        mode=hparams['es_mode'])
    trainer = pl.Trainer(
        gpus=0, # number gpus tu run, currently run set on cpu
        max_epochs=hparams['max_epochs'],
        logger=logger,
        callbacks=[estop]
    )
    print(f'Tensorboard log directory: "{logger.log_dir}"')
    #trainer.tune(model)
    trainer.fit(model)
    test_result = trainer.test()
    return model, vocabulary

def run():
    model, vocabulary = train(hparams)
    vocabulary.save(vocabulary_path)
    script = model.to_torchscript()
    torch.jit.save(script, model_path.as_posix())


if __name__ == '__main__':
    run()
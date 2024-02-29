import time

wandb_project = 'dropout_size_compare_ft'

out_dir = 'out-shakespeare'
eval_interval = 5
eval_iters = 40
wandb_log = False # feel free to turn on
# wandb_project = 'shakespeare'
wandb_run_name = 'ft-' + str(time.time())

dataset = 'shakespeare_char'
init_from = 'gpt2-medium' # this is the largest GPT-2 model

# only save checkpoints if the validation loss improves
always_save_checkpoint = False

# the number of examples per iter:
# 1 batch_size * 32 grad_accum * 1024 tokens = 32,768 tokens/iter
# shakespeare has 301,966 tokens, so 1 epoch ~= 9.2 iters
batch_size = 2
gradient_accumulation_steps = 8
max_iters = 80

# finetune at constant LR
learning_rate = 2e-4
decay_lr = False

dropout=0.0

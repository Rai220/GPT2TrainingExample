#!/bin/sh
    #--do_eval \
    #--eval_data_file='input_data/val_harry.txt'\

python examples/run_lm_finetuning.py \
    --output_dir=output \
    --model_type=gpt2 \
    --model_name_or_path=gpt2-medium \
    --do_train \
    --train_data_file='dataset.txt' \
    --overwrite_output_dir\
    --block_size=200\
    --per_gpu_train_batch_size=1\
    --save_steps 5000\
    --num_train_epochs=2
#!/bin/sh
export LD_LIBRARY_PATH=/usr/local/cuda-11.2/lib64
export CUDA_HOME=/usr/local/cuda-11.2

python examples/run_lm_finetuning.py \
    --output_dir=output \
    --model_type=gpt2 \
    --model_name_or_path=gpt2-large \
    --do_train \
    --train_data_file='dataset.txt' \
    --do_eval \
    --eval_data_file='dataset_mini.txt' \
    --overwrite_output_dir\
    --block_size=10\
    --per_gpu_train_batch_size=1\
    --save_steps 5000 \
    --num_train_epochs=3 \
    --evaluate_during_training

    # --fp16_opt_level=O3 \
    # --fp16 \

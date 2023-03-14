python train.py \
--output_dir=s4d_gss_a100_intermediate_1024_150k \
--dataset_path=/home/ubuntu/enwiki_books_128_20/ \
--model_type=s4-bert \
--max_seq_length=128 \
--weight_decay=0.05 \
--per_device_train_batch_size=95 --per_device_eval_batch_size=95 \
--learning_rate=6e-4 \
--overwrite_output_dir \
--num_train_shards=30000 \
--adam_beta1=0.9 --adam_beta2=0.98 \
--logging_steps=100 --save_steps=5000 --eval_steps=8000 \
--n_layers=23 --warmup_steps=15000 --num_total_train_steps=1500000 \
--hidden_dropout_prob=0.1 --hidden_size=1024 \
--intermediate_size=3072

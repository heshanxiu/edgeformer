#!/bin/bash
#SBATCH -A csb175
#SBATCH --job-name="train_edge_app"
#SBATCH --output="train_edge_app.%j.%N.out"
#SBATCH --error="train_edge_app.%j.%N.err"
#SBATCH --partition=gpu-shared
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --no-requeue
#SBATCH --gpus=1
#SBATCH --mem-per-gpu=90G
#SBATCH -t 10:00:00


python Edgeformer-E/main.py --data_path "/expanse/lustre/projects/csb176/she2/edgeformer/Edgeformer-E/EdgeformerE-data/Apps"

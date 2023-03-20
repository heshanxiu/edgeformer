#!/bin/bash
#SBATCH -A csb175
#SBATCH --job-name="train_edge"
#SBATCH --output="train_edge.%j.%N.out"
#SBATCH --error="train_edge.%j.%N.err"
#SBATCH --partition=gpu-shared
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --no-requeue
#SBATCH --gpus=1
#SBATCH --mem-per-gpu=90G
#SBATCH -t 24:00:00


python Edgeformer-E/main.py --data_path "/expanse/lustre/projects/csb176/she2/edgeformer/Edgeformer-E/EdgeformerE-data/Apps"

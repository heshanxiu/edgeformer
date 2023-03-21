#!/bin/bash
#SBATCH -A csb175
#SBATCH --job-name="node_apps_movie"
#SBATCH --output="node_apps_movie.%j.%N.out"
#SBATCH --error="node_apps_movie.%j.%N.err"
#SBATCH --partition=gpu-shared
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --no-requeue
#SBATCH --gpus=1
#SBATCH --mem-per-gpu=90G
#SBATCH -t 24:00:00


python Edgeformer-E/main.py --data_path "/expanse/lustre/projects/csb176/she2/edgeformer/Edgeformer-N/EdgeformerN-data/Apps"
python Edgeformer-E/main.py --data_path "/expanse/lustre/projects/csb176/she2/edgeformer/Edgeformer-N/EdgeformerN-data/movie"
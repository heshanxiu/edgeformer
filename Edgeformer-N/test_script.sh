#!/bin/bash
#SBATCH -A csb175
#SBATCH --job-name="app_stack"
#SBATCH --output="app_stack".%j.%N.out"
#SBATCH --error="app_stack".%j.%N.err"
#SBATCH --partition=gpu-shared
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --no-requeue
#SBATCH --gpus=1
#SBATCH --mem-per-gpu=90G
#SBATCH -t 3:00:00


python Edgeformer-N/main.py --mode test --data_path "./Edgeformer-N/EdgeformerN-data/Apps" --load_ckpt_name "./Edgeformer-N/EdgeformerN-data/Apps/ckpt/EdgeformerN-text-1e-05-64-best.pt"
#python Edgeformer-N/main.py --mode test --data_path "./Edgeformer-N/EdgeformerN-data/Apps" --load_ckpt_name "./Edgeformer-N/EdgeformerN-data/Apps/ckpt/old_apps/EdgeformerN-text-1e-05-64-epoch-2.pt" ## baseline
python Edgeformer-N/main.py --mode test --data_path "./Edgeformer-N/EdgeformerN-data/Apps" --load_ckpt_name "./Edgeformer-N/EdgeformerN-data/Apps/ckpt/old_apps/EdgeformerN-text-1e-05-64-best.pt"
#python Edgeformer-N/main.py --mode test --data_path "./Edgeformer-N/EdgeformerN-data/stackoverflow" --load_ckpt_name "./Edgeformer-N/EdgeformerN-data/stackoverflow/ckpt/EdgeformerN-text-1e-05-64-best.pt"


#!/bin/bash
#SBATCH -J Beast-GPU
#SBATCH -p gpu
#SBATCH -A gpu_group
#SBATCH -c 1
#SBATCH --gres=gpu:1
INPUT=$1

# sbatch BeastGPU.sh A01_WA287.xml 

#loading modules
module load bioinfo/beagle-lib-gpu/3.1.2
module load bioinfo/BEAST/1.10.5pre

#running beast
beast -beagle_cuda -beagle_gpu ${INPUT} > ${INPUT}.out

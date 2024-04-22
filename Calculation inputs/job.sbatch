#!/bin/bash
#SBATCH --job name=1TMoS2
#SBATCH --time=04:00:00
#SBATCH --nodes=3
#SBATCH --ntasks-per-node=2 

module load jdftx 

srun jdftx -i relax.in | tee relax.out
srun jdftx -i dos.in | tee dos.out
srun jdftx -i vibrations.in | tee vibrations.out

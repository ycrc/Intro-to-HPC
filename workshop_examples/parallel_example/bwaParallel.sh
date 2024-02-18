#!/bin/bash

# This is the RIGHT way to submit a 4 thread bwa run.  We allocate one task with 4 cpus, and tell bwa to start 4 threads.
# In a real run, we'd likely use more than 4, perhaps 64.

#SBATCH -c 4
#SBATCH --mem=16g
#SBATCH -t 10:00
#SBATCH --mail-type ALL

GENOME=/gpfs/ycga/datasets/genomes/Mus_musculus/UCSC/mm10/Sequence/BWAIndex/genome.fa
READS=/gpfs/gibbs/pi/support/teaching/pHPC/allreads.fa

module purge # best practice to start clean
module load SAMtools BWA # load our modules

# run piped command
bwa mem -t $SLURM_CPUS_PER_TASK $GENOME $READS  | samtools sort -O bam -o allreads.bam -

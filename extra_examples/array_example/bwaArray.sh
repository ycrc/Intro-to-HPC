#!/bin/bash

# This is the RIGHT way to submit a 4 thread bwa run.  We allocate one task with 4 cpus, and tell bwa to start 4 threads.
# In a real run, we'd likely use more than 4, perhaps 64.

#SBATCH -p scavenge
#SBATCH --array=1-10
#SBATCH -c 4
#SBATCH --mem=16g
#SBATCH -t 10:00
#SBATCH --mail-type ALL

GENOME=/nfs/roberts/courses/INP7560/genome.fa
READS=/nfs/roberts/courses/INP7560/allreads.fa

module reset # best practice to start clean
module load SAMtools BWA # load our modules

# run piped command
bwa mem -t $SLURM_CPUS_PER_TASK $GENOME $READS.$SLURM_ARRAY_TASK_ID  | samtools sort -O bam -o allreads.bam -

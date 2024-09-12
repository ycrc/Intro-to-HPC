#!/bin/bash

### Run on workshop reservation, remove this line if you are submitting this after the workshop ####
##SBATCH --reservation=ycrc_intro

### Run on day partition ###
#SBATCH -p day

### Name your job as MC_test ###
#SBATCH -J MC_test 

### Request 1 GB of mem/cpu ###
#SBATCH --mem-per-cpu=1G

### Request 10 minutes of run time ###
#SBATCH -t 20:00 

### Receive email notifications when this job starts/completes ###
#SBATCH --mail-type=all




### Remove any loaded modules ###
module purge 

### Load R module ###
module load R/4.3.2-foss-2022b

### Execute the R script ###
Rscript MC.R 

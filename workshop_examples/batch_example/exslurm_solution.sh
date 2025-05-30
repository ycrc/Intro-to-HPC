#!/bin/bash

### Run on day partition ###
#SBATCH -p devel

### Request 1 GB of mem/cpu ###
#SBATCH --mem-per-cpu=1G

### Request 20 minutes of run time ###
#SBATCH -t 20:00 

### Receive email notifications when this job starts/completes ###
#SBATCH --mail-type=all



### Remove any loaded modules ###
module reset 

### Load R module ###
module load R/4.4.1-foss-2022b

### Execute the R script ###
Rscript MC.R 

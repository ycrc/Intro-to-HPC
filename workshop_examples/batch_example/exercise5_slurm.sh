#!/bin/bash

### Run on devel partition ###
#SBATCH -p XXXXX

### Request 1 GB of mem/cpu ###
#SBATCH --mem-per-cpu=XG

### Request 20 minutes of run time ###
#SBATCH -t XX:XX

### Receive email notifications when this job starts/completes ###
#SBATCH --mail-type=XXX




### Remove any loaded modules ###
INSERT COMMAND TO UNLOAD MODULES

### Load R module ###
INSERT COMMAND TO LOAD MODULE HERE

### Execute the R script ###
Rscript SCRIPTNAME 

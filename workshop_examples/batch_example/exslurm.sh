#!/bin/bash

### Run on workshop reservation, remove this line if you are submitting this after the workshop ####
#SBATCH --reservation=ycrc_intro

### Run on day partition ###
#SBATCH -p day 

### Name your job as MC_test ###
#SBATCH -J XXXXXXX

### Request 1 GB of mem/cpu ###
#SBATCH --mem-per-cpu=XG

### Request 10 minutes of run time ###
#SBATCH -t XX:XX

### Receive email notifications when this job starts/completes ###
#SBATCH --mail-type=XXX




### Remove any loaded modules ###
module COMMANDTOREMOVEMODULES

### Load R module ###
INSERT COMMAND TO LOAD MODULE HERE

### Execute the R script ###
Rscript SCRIPTNAME 

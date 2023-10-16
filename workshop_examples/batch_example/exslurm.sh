#!/bin/bash

####Run on workshop reservation####
#SBATCH --reservation=ycrc_intro

###Name your job as MC_test###
#SBATCH -J XXXXXXX

####request 1G of mem/cpu#####
#SBATCH --mem-per-cpu=XG

####Request 10 minutes of run time####
#SBATCH -t XX:XX

####provide email for notification of job start/completion####
#SBATCH --mail-type=XXX

#######remove any loaded modules######
module COMMANDTOREMOVEMODULES

####load necessary module to run R###
INSERT COMMAND TO LOAD MODULE HERE

####execute R script######
Rscript SCRIPTNAME 

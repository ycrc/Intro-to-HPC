#!/bin/bash

####Run on workshop reservation####
#SBATCH --reservation=workshop

####request 1 cpu####
#SBATCH XXXXX 1

####request 5 G of mem/cpu#####
#SBATCH XXXXXX=XG

####Request 10 minutes of run time####
#SBATCH --XXXX=XX:XX:XX

####provide email for notification of job start/completion####
#SBATCH --mail-user=YOUREMAIL
#SBATCH --mail-type=XXXX

#######remove any loaded modules######
module COMMANDTOREMOVEMODULES

####load necessary module to run R###
INSERT COMMAND TO LOAD MODULE HERE

####execute R script######
Rscript SCRIPTNAME 

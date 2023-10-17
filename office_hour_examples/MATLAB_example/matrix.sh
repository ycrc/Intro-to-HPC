#!/bin/bash

#### Run on workshop reservation ###
#SBATCH --reservation=ycrc_intro

#### Request 1 CPU #####
#SBATCH XX 1

#### Request 10 GB of memory per CPU ###
#SBATCH XXXXXXXXXXXXX 10G

#### Request 10 minites of run time ###
#SBATCH XX 10:00

#### Set the name of the job as MATLAB_example ####
#SBATCH XX MATLAB_example

#### Provide email for notification of job start/completion ###
#SBATCH --mail-user=XXXXX
#SBATCH --mail-type=XXX

##### Remove any loaded modules ####


##### Load the MATLAB/2023a module here ####


##### Run matrix.batch.m here ####
matlab -batch "matrix_batch"









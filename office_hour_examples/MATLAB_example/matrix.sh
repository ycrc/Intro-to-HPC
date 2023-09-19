#!/bin/bash

#### Run on workshop reservation ###
#SBATCH --reservation=workshop

#### Request 1 CPU #####
#SBATCH XXXXX 1

#### Request 10 GB of memory per CPU ###
#SBATCH XXXXX 10G

#### Request 10 minites of run time ###
#SBATCH XXXXX 10:00

#### Set the name of the job as MATLAB_example ####
#SBATCH XXXXX MATLAB_example

#### Provide email for notification of job start/completion ###
#SBATCH --mail-user=XXXXX
#SBATCH --mail-type=XXXXX

##### Remove any loaded modules ####


##### Load the MATLAB/2023a module here ####


##### Run matrix.batch.m here ####
matlab -batch "matrix_batch"









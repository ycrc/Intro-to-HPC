#!/bin/bash

#### Run on workshop reservation ###
#SBATCH -p day

#### Request 1 CPU #####
#SBATCH -c 1

#### Request 10 minites of run time ###
#SBATCH -t 10:00

#### Request 10GB of memory per CPU ###
#SBATCH --mem-per-cpu 10G

#### Set the name of the job as MATLAB_example ####
#SBATCH -J  MATLAB_example

#### Provide email for notification of job start/completion ###
#SBATCH --mail-user=YOUREMAIL # Change this to your email address
#SBATCH --mail-type=ALL

##### Remove any loaded modules ####
module purge

##### Load the MATLAB/2023a module here ####
module load MATLAB/2023a

##### Run matrix.batch.m here ####
matlab -batch "matrix_batch"









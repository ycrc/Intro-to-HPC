#!/bin/bash

#---------- Replace XXXX with correct flags and values -----------#

#### Run on workshop reservation. Do not change this line.###
##SBATCH --reservation=ycrc_intro  

#### Request 10 GB of memory per CPU ###
#SBATCH --mem-per-cpu 10G

#### Request 10 minites of run time ###
#SBATCH -t 30:00

#### Set the name of the job as MATLAB_example ####
#SBATCH -J MATLAB_example

#### Provide email for notification of job start/completion ###
#SBATCH --mail-type=ALL


#----------- Replace with correct commands ----------------------#

##### Remove any loaded modules ####
module purge

##### Load the MATLAB/2023a module here ####
module load MATLAB/2023a

##### Run matrix.batch.m here. Do not change this line. ####
matlab -batch "matrix_batch" 









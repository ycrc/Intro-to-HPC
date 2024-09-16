#!/bin/bash

#---------- Replace XXXX with correct flags and values -----------#

#### Run on workshop reservation. If you are running this job after workshop, comment this line out.###
#SBATCH --reservation=ycrc_intro  

#### Request 10 GB of memory per CPU ###
#SBATCH --mem-per-cpu XXX

#### Request 10 minites of run time ###
#SBATCH XX 10:00

#### Set the name of the job as MATLAB_example ####
#SBATCH -J XXXXXXXXXXXXXX

#### Provide email for notification of job start/completion ###
#SBATCH --mail-type=XXX


#----------- Replace with correct commands ----------------------#

##### Remove any loaded modules ####
INSERT COMMAND TO UNLOAD MODULES

##### Load the MATLAB/2023a module here ####
INSERT COMMAND TO LOAD MODULE HERE

##### Run matrix.batch.m here. Do not change this line. ####
matlab -batch "matrix_batch" 









#!/bin/bash

#### Run on workshop reservation ###
#SBATCH --reservation=workshop

#### Request 1 CPU #####
#SBATCH XXXXX 1

#### Request 10 minites of run time ###
#SBATCH XXXXX 10:00

#### Set the name of the job as PSCL_example ####
#SBATCH XXXXX PSCL_example

#### Provide email for notification of job start/completion ###
#SBATCH --mail-user=XXXXX
#SBATCH --mail-type=XXXXX

##### Remove any loaded modules ####


##### Load the R/4.3.0-foss-2020b module here ####


##### Run pscl_example.R here ####


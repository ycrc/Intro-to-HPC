#!/bin/bash

#### Run on workshop reservation ###
#SBATCH -p day

#### Request 1 CPU #####
#SBATCH -c 1

#### Request 10 minites of run time ###
#SBATCH -t 10:00

#### Set the name of the job as PSCL_example ####
#SBATCH -J PSCL_example

#### Provide email for notification of job start/completion ###
##SBATCH --mail-user=YOUREMAIL #Change this to your email address
#SBATCH --mail-type=ALL

##### Remove any loaded modules ####
module purge

##### Load the R/4.3.0-foss-2020b module here ####
module load R/4.3.0-foss-2020b

##### Run pscl_example.R here ####
Rscript pscl_example.R

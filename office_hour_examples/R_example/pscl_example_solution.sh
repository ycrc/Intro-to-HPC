#!/bin/bash

#-------- Replace XXXX with correct flags and words -----------#

#### Run on workshop reservation ###
#SBATCH --reservation=ycrc_intro

#### Request 10 minites of run time ###
#SBATCH -t 10:00

#### Set the name of the job as PSCL_example ####
#SBATCH -J PSCL_example

#### Provide email for notification of job start/completion ###
#SBATCH --mail-type=ALL

#-------- Replace with correct commands ----------------------#

##### Remove any loaded modules ####
module purge

##### Load the R/4.3.0-foss-2020b module here ####
module load R/4.3.0-foss-2020b

##### Run pscl_example.R here ####
Rscript pscl_example.R

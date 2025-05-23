#!/bin/bash

#-------- Replace XXXX with correct flags and values -----------#

#### Run in day partition###
#SBATCH -p day

#### Request 10 minites of run time ###
#SBATCH -t 10:00

#### Set the name of the job as PSCL ####
#SBATCH -J PSCL

#### Provide email for notification of job start/completion ###
#SBATCH --mail-type=ALL

#-------- Replace with correct commands ----------------------#

##### Remove any loaded modules ####
module reset

##### Load the R/4.4.1-foss-2022b module here ####
module load R/4.4.1-foss-2022b

##### Run pscl_example.R here ####
Rscript pscl_example.R

#!/bin/bash

#-------- Replace XXXX with correct flags and values -----------#

#### Run on workshop reservation. Comment this out if you are running this job after the workshop ###
##SBATCH --reservation=ycrc_intro

#### Request 10 minites of run time ###
#SBATCH -t 10:00

#### Set the name of the job as PSCL_example ####
#SBATCH -J PSCL_example

#### Provide email for notification of job start/completion ###
#SBATCH --mail-type=ALL

#-------- Replace with correct commands ----------------------#

##### Remove any loaded modules ####
module purge

##### Load the R/4.4.1-foss-2022b module here ####
module load R/4.4.1-foss-2022b

##### Load the R-bundle-CRAN/2024.06-foss-2022b module here ###
module load R-bundle-CRAN/2024.06-foss-2022b

##### Run pscl_example.R here ####
Rscript pscl_example.R

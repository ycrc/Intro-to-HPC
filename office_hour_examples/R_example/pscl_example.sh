#!/bin/bash

#-------- Replace XXXX with correct flags and values -----------#

#### Run on workshop reservation. Do not change this line. ###
#SBATCH --reservation=ycrc_intro

#### Request 10 minites of run time ###
#SBATCH XX 10:00

#### Set the name of the job as PSCL_example ####
#SBATCH -J XXXXXXXXXXXX

#### Provide email for notification of job start/completion ###
#SBATCH --mail-type=XXX

#-------- Replace with correct commands ----------------------#

##### Remove any loaded modules ####
module COMMANDTOREMOVEMODULES

##### Load the R/4.3.0-foss-2020b module here ####
INSERT COMMAND TO LOAD MODULE HERE

##### Run pscl_example.R here ####
Rscript SCRIPTNAME

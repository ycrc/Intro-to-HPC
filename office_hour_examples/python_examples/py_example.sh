#!/bin/bash

#SBATCH JOBNAME

#SBATCH MEM_REQUEST_FOR_2G

#SBATCH TIME_REQUEST_FOR_10min

#SBATCH REQUEST_FOR_1_CPU

#SBATCH EMAIL_ADDRESS

#SBATCH RECEIVE_ALL_EMAILS


LOAD MINICONDA 

ACTIVATE jupy_env CONDA ENVIRONMENT

SUBMIT PYTHON SCRIPT pyexample.py

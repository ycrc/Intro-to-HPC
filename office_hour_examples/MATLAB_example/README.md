Our documentation on MATLAB: https://docs.ycrc.yale.edu/clusters-at-yale/guides/matlab/

# MATLAB exercises

## Objective
1. Run MATLAB code on Open OnDemand
2. Run MATLAB code interactively in the terminal
3. Run MATLAB code as a batch job

## Run MATLAB program on Open OnDemand

1. On Open OnDemand, request a MATLAB session with the version MATLAB/2023a  with 1 CPU for 1 hour
2. Launch a MATLAB session 
3. Navigate the file system to find `spehere_example.m`
5. Run the code to ensure that it does not produce any errors and generates a plot 
6. To quit the MATLAB session, type exit in your console, close the tab, and delete the session to free up compute resources. 

## Run MATLAB code interactively in the terminal

1. In the terminal, request an interactive compute session: 
```
salloc
```
2. Load the MATLAB module:
```
module load MATLAB/2023a
```
3. Navigate to the directory where `matrix_interactive.m` is located:
```
cd ~/project/workshop/Intro-to-HPC/office_hour_examples/MATLAB_example
```
3. Launch a MATLAB session:
```
matlab -nodisplay
```
4. Run `matrix_interactive.m` within the MATLAB session:
```
>>  matrix_interactive
```
5. Exit the MATLAB session:
```
>> exit
```
6. Exit the interactive compute session:
```
exit
```

## Run MATLAB code as a batch job 

1. In the terminal, navigate to the directory where matrix_batch.m is located:
```
cd ~/project/workshop/Intro-to-HPC/office_hour_examples/MATLAB_example
```
2. Open `matrix.sh` with your favorite editor (e.g. nano) and add necessary lines to complete the batch script. Instructions are in the batch script. If you are stuck, take a look at `matrix_solution.sh`.
3. Submit a job:
```
sbatch matrix.sh
```
4. Check your job ID, status and the node the job is running:
```
squeue --me
```
5. Use jobstats to monitor your job. The job takes about 10 minutes. 
6. Open the file named `slurm-YourJobID.out` to review the output from your job.  




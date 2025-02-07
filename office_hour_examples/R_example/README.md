Our documentation on R : https://docs.ycrc.yale.edu/clusters-at-yale/guides/r/

# R exercises

## Objective:
1. Use R module and install additional packages
2. Use RStudio Server on Open OnDemand
3. Run your R script as a batch job   

*All three sections are independent, so feel free to work on any of the sections. 

## Use R module and install additional packages from a terminal

1. In the terminal, request an interactive compute session:
```
salloc
```
2. Load the R module:
```
module load R/4.4.1-foss-2022b
```
3. Start an R session:
```
R
```
4. Try loading the “lattice” package:
```
library(lattice)
```
You will see no error. Some R packages are installed with the R module by default.
5. Exit the R session:
```
q()
```
6. List which R packages are installed with the R/4.4.1-foss-2022b module:
```
module help R/4.4.1-foss-2022b
```
7. List which R packages are installed with  R-bundle-CRAN and R-bundle-Bioconductor modules:
```
module help R-bundle-CRAN/2024.06-foss-2022b
module help R-bundle-Bioconductor/3.19-foss-2022b-R-4.4.1
```
Loading `R/4.4.1-foss-2022b` automatically loads the `R-bundle-CRAN` and the `R-bundle-Bioconductor` modules. With these three modules loaded, there are over 1000 R packages installed and ready to use.

8. Let's find if Seurat 5.1.0 version is already installed with these modules:
```
module spider Seurat/5.1.0
```
The output indicates that this version of Seurat is already included in the `R-bundle-Bioconductor/3.19-foss-2022b-R-4.4.1` module.

9. Exit the interactive compute session:
```
exit
```
## Use RStudio Server on Open OnDemand

1. On Open OnDemand, request an RStudio server with R version `R/4.4.1-foss-2022b` with 1 CPU for 1 hour.
2. Open an RStudio session 
3. Navigate the file system to find `zoo_example.R`
4. Run the code to ensure that it does not produce any errors and generates a plot 
5. Quit the RStudio session:
```
q()
```
6. Close the tab, and delete the session to free up compute resources. 

## Run your R script as a batch job 

1. In the terminal, navigate to the directory where `pscl_example.R` is located:
```
cd ~/project/workshop/Intro-to-HPC/office_hour_examples/R_example
```
3. Open `pscl_example.sh` with your favorite editor (e.g. nano) and add necessary lines to complete the batch script (the instructions are in the batch script). If you are stuck, take a look at `pscl_example_solution.sh`.
4. Submit your job:
```
sbatch pscl_example.sh
```
5. Check your job ID and the status:
```
squeue --me
```
6. Use jobstats to monitor your jobs
7. Open the file named `slurm-JobID.out` to review the output from your job.  



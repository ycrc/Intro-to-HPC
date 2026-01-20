# Intro-to-HPC

Our slides are located at [https://tinyurl.com/Intro-HPC-09-29](https://tinyurl.com/Intro-HPC-09-29)

## Exercise commands to copy and paste

The following shell commands go together with the the workshop slides and can be pasted into the terminal. 

We recommend doing this one line at a time so you can observe each result individually. 

Note, lines beginning with the pound sign '#' are comments, and don't do anything.

### Running python

```
# Navigate to a folder called interactive_example
cd ~/project/workshop/Intro-to-HPC/workshop_examples/interactive_example

# Request an interactive session in the devel partition:
salloc

# Load Python module:
module load Python

# Run the Python script:
python interpyexample.py
```

### Installing Python packages with miniconda

```
# To create a new conda environment:
salloc 
module load miniconda
conda create -n myenv python=3.11 pandas numpy scipy matplotlib

# To use the conda environment:
conda activate myenv
```

### Using your conda environment with Jupyter OOD

```
# Step 1: Add ‘notebook` to make an existing environment compatible with Jupyter OOD:
conda activate myenv
conda install notebook

# OR: 
# To create a Jupyter/OOD compatible conda environment from scratch:
conda create -y -n notebook_env python numpy pandas matplotlib notebook

# Step 2: To add your environment to the OOD Jupyter miniconda menu:
ycrc_conda_env.sh update
```
###   

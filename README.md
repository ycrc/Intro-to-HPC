# Intro-to-HPC

Our slides are located at [https://tinyurl.com/Intro-HPC-01-22-26](https://tinyurl.com/Intro-HPC-01-22-26)

## Navigating and using HPC

#### Browsing files and directories

Print the path to the current directory

```bash
pwd
```

List files and directories in the current directory

```bash
ls
```

Change to a different directory

```bash
cd ~/project
pwd
```

Go up one directory

```bash
cd ..
```

Go to your home directory (both of the commands below do the same thing)
```bash
cd ~
cd
```

#### View file contents

Display the contents of a file
```bash
cat ~/hello.txt
```

#### Edit file contents

Edit a file
```bash
nano ~/hello.txt
# Now edit the file
# ^O to save
# ^X to exit
```

#### Create, move and delete files and directories

Create a directory
```bash
mkdir ~/project/workshop
ls ~/project
```

Copy files
```bash
cp ~/hello.txt ~/hello_copy.txt
ls ~/hello*
```

Move files
```bash
mv ~/hello.txt ~/project/workshop
ls ~/hello*
ls ~/project/workshop
```

Delete files
```bash
rm ~/hello_copy.txt
ls ~/hello*
```

## Transfering data

ssh to the transfer node and copy data to your home folder

```bash
ssh transfer

# See the slides to find the correct directory to replace "<data directory>" below. e.g. for bouchet, use `cd /apps/data/training`
cd <data directory>/training

# Now copy the workshop data to your home directory
cp -r Intro-to-HPC ~/project/workshop

# Or try rsync
rsync -Pa Intro-to-HPC ~/project/workshop

#exit the transfer node
exit
```

Alternative if the above did not work
```bash
cd ~/project/workshop
git clone https://github.com/ycrc/Intro-to-HPC
```

## Understanding quotas

Viewing quotas
```bash
getquota
```



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

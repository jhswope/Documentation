#!/bin/bash
#SBATCH --nodes=1                         # Number of requested nodes
#SBATCH --time=0:01:00                    # Max wall time
#SBATCH --qos=testing                     # Specify testing QOS
#SBATCH --partition=shas-testing          # Specify Summit haswell nodes
#SBATCH --ntasks=4                        # Number of tasks per job
#SBATCH --job-name=parallel_hello         # Job submission name
#SBATCH --output=GENERAL_MPI_JOB.%j.out   # Output file name with Job ID

# Written by: Daniel Trahan
# Date: 20 April 2018
# Updated: 25 July 2018
# Purpose: This script submits a general MPI program to the Slurm job scheduler.

# purge all existing modules
module purge

# load any modules needed to run your program
module load intel
module load impi

# run your program
mpirun -np 4 ./hello_world_mpi.exe

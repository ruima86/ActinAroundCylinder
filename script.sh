#!/bin/bash
#SBATCH --job-name=my_job
#SBATCH --ntasks=1 --nodes=1
#SBATCH --mem-per-cpu=1024 
#SBATCH --time=24:00:00

module load Libs/ARMADILLO/7.700.0
module load Langs/GCC/5.2.0
module load Libs/MKL

g++ main.cpp connection.cpp filament.cpp -o main.o -std=c++11 -O2 -larmadillo -lmkl_rt

./main.o


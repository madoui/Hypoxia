#!/bin/bash
#SBATCH --job-name=run2MCMC
#SBATCH --chdir=/scratch/kugier/test/PAML/run
#SBATCH --output=MCMCTree_sbatch.log.txt
#SBATCH --mail-user=kevin.sugier@gmail.com
#SBATCH --mail-type=all

. /local/env/envpaml-4.9.sh

mcmctree mcmc.run.ctl

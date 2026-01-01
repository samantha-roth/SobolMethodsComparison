#!/bin/bash
#
#SBATCH --job-name=2_6_diffseeds_pt4
#SBATCH --output=2_6_diffseeds_pt4_output.%j.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem=40GB
#SBATCH --time=144:00:00
#SBATCH --account=pches_cr_default
#SBATCH --partition=standard
#SBATCH --mail-type=BEGIN,END,FAIL,TIME_LIMIT_80,TIME_LIMIT_90
#SBATCH --mail-user=svr5482@psu.edu

echo "Job started on `hostname` at `date`"

module load r
cd /storage/group/pches/default/users/svr5482/Sensitivity_paper_revision
Rscript 2_Kriging6_diffseeds_pt4.R

echo "Job Ended at `date`"
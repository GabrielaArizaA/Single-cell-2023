#!/bin/bash
#
#SBATCH --job-name=cellranger_count
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=24G
#SBATCH --time=24:00:00
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/arizaaranguren/day6/ex11/cellranger_count.log
#SBATCH --error=/scratch/course/2023w300106/arizaaranguren/error/cellranger_count.err

#modules
module load cellranger/7.1.0
module list

#running cell ranger for alignment
cellranger count --id cellranger_count --transcriptome /scratch/course/2023w300106/arizaaranguren/day6/ex11/cellranger_run \
--fastqs /scratch/course/2023w300106/12hr1/run1, /scratch/course/2023w300106/12hr1/run2, /scratch/course/2023w300106/12hr1/run3 \
--sample 89085 --nosecondary --localcores 16

#!/bin/bash
#
#SBATCH --job-name=cellranger
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=32G
#SBATCH --time=24:00:00
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/arizaaranguren/day6/ex11/cellranger.log
#SBATCH --error=/scratch/course/2023w300106/arizaaranguren/error/cellranger.err

#modules 
module load cellranger/7.1.0
module list

#running 
cellranger mkref --genome cellranger_run --fasta /scratch/course/2023w300106/Nv2_wnt4_pcna_fluo.fa \
--genes /scratch/course/2023w300106/Nv2_wnt4_pcna_fluo.gtf --nthreads 16

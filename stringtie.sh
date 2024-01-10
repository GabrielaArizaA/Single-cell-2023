#!/bin/bash
#
#SBATCH --job-name=stringtie
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=4G
#SBATCH --time=10:00:00
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/arizaaranguren/day3/stringtie.log
#SBATCH --error=/scratch/course/2023w300106/arizaaranguren/error/stringtie.err

#loading modules
module load stringtie
module list

#Running stringtie
stringtie /scratch/course/2023w300106/BAMS/SRR24348396.f.bam -l NemVecv1 -o nemAnnotation.gtf -p 6 -u -m 230 -f 0.02 -g 60

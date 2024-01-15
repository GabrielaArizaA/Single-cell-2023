#!/bin/bash
#
#SBATCH --job-name=Subread
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=16G
#SBATCH --time=24:00:00
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/arizaaranguren/day3/ex8/subread/subread.log
#SBATCH --error=/scratch/course/2023w300106/arizaaranguren/error/subread.err

#loading modules 
module load subread
module list

#runnign subread
featureCounts -C -p -s 2 -Q 20 -T 16 --countReadPairs -a /scratch/course/2023w300106/jmontenegro/ex2/annotation/tmp.gtf \
-o matrix /scratch/course/2023w300106/arizaaranguren/day2/trimming/ex6/SRR24348396_trim_Aligned.sortedByCoord.out.bam

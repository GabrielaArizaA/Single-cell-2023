#!/bin/bash
#
#SBATCH --job-name=samtoolsFilter
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=4G
#SBATCH --time=10:00:00
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/arizaaranguren/day3/samtoolsFilter.log
#SBATCH --error=/scratch/course/2023w300106/arizaaranguren/error/samtoolsFilter.err

#loading modules
module load samtools
module list

#To use samtools view
samtools view -b -o /scratch/course/2023w300106/BAMS/SRR24348396.f.bam \
-q 20 -f 0x2 -F 0x4 -@ 8 \
/scratch/course/2023w300106/arizaaranguren/day2/trimming/ex6/SRR24348396_trim_Aligned.sortedByCoord.out.bam

#!/bin/bash
#
#SBATCH --job-name=trimmomatic
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=4G
#SBATCH --time=10:00:00
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/arizaaranguren/day2/trimming/trimmmomatic.log
#SBATCH --error=/scratch/course/2023w300106/arizaaranguren/errors/trimmmomatic.err


#load modules
module load trimmomatic/0.39
module list

#Run trimmomatic (-trimlog how the run went, the summary overall info of how much info was remove, )
trimmomatic PE -threads 8 \
-trimlog trimmo_stats.log \
-summary trimmo_summary.txt \
/scratch/course/2023w300106/arizaaranguren/day1/ex4.2/SRR24348396/SRR24348396_1.fastq \
/scratch/course/2023w300106/arizaaranguren/day1/ex4.2/SRR24348396/SRR24348396_2.fastq \
/scratch/course/2023w300106/arizaaranguren/day2/trimming/SRR24348396_R1.qc.fastq \
/scratch/course/2023w300106/arizaaranguren/day2/trimming/SRR24348396_S1.qc.fastq \ 
/scratch/course/2023w300106/arizaaranguren/day2/trimming/SRR24348396_R2.qc.fastq \
/scratch/course/2023w300106/arizaaranguren/day2/trimming/SRR24348396_S2.qc.fastq \
ILLUMINACLIP:/scratch/course/2023w300106/arizaaranguren/day2/trimming/adapters.fa:2:30:10 \
SLIDINGWINDOW:6:15 \
MINLEN:75

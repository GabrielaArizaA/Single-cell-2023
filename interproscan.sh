#!/bin/bash
#
#SBATCH --job-name=interproscan
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=8G
#SBATCH --time=24:00:00
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/arizaaranguren/day3/interproscan.log
#SBATCH --error=/scratch/course/2023w300106/arizaaranguren/error/interproscan.err

#modules
module load interproscan
module list 

#running interproscan
interproscan.sh -b /scratch/course/2023w300106/arizaaranguren/day5/ex10/nemVec.function -cpu 16 -etra -f TSV,GFF3 -goterms \
-i /scratch/course/2023w300106/arizaaranguren/day5/ex10/proteintransdecoder.fasta \
-iprlookup -pa -t p

#!/bin/bash
#
#SBATCH --job-name=Augustus
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=16G
#SBATCH --time=24:00:00
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/arizaaranguren/day3/augustus.log
#SBATCH --error=/scratch/course/2023w300106/arizaaranguren/error/augustus.err

#loading modules
module load conda
module list
conda activate augustus-3.5.0

#running augustus
augustus --strand=both --genemodel=complete --gff3=on --UTR=off --outfile=nemVec_augustus.gff \
--species=nematostella_vectensis \
/scratch/course/2023w300106/arizaaranguren/day1/ex4/ncbi_dataset/data/GCF_932526225.1/chr2.fasta

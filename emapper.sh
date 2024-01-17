#!/bin/bash
#
#SBATCH --job-name=eggnog
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=8G
#SBATCH --time=24:00:00
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/arizaaranguren/day6/eggnog.log
#SBATCH --error=/scratch/course/2023w300106/arizaaranguren/error/eggnog.err

#module load for eggnog
module load conda
module activate eggnog-mapper-2.1.12

#running eggnog
emapper.py -i /scratch/course/2023w300106/arizaaranguren/day5/ex10/proteintransdecoder.fasta \
--cpu 16 --itype proteins \
--data_dir /scratch/mirror/eggnog-mapper/2.1.12/ \
-m diamond --pident 60 --query_cover 60 --subject_cover 70 --tax_scope 'eukaryota_broad' \
--output jaNemVec_emapper --output_dir /scratch/course/2023w300106/arizaaranguren/day6 \
--temp_dir ${TMPDIR} --decorate_gff jaNemVec_emapper.dec.gff

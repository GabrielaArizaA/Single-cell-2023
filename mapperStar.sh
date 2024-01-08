#for running mapping with Star in the cluster is nammed mapperStar.sh
#!/bin/bash
#
#SBATCH --job-name=spades
#SBATCH --mail-type=BEGIN,END,TIME_LIMIT_50,TIME_LIMIT_80,TIME_LIMIT
#SBATCH --cpus-per-task=16
#SBATCH --mem=3000M
#SBATCH --time=2-24:00:00
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/arizaaranguren/day1/star.log
#SBATCH --error=/scratch/course/2023w300106/arizaaranguren/day1/star.err

#loading modules
module load star
module list

#where is going to run
cd /scratch/course/2023w300106/arizaaranguren/day1
mkdir ex5
cd ex5

#To map with star
STAR --runThreadN 16 --genomeDir /scratch/course/2023w300106/arizaaranguren/day1/ex4/ncbi_dataset/data/GCF_932526225.1/jaNemVect1.1_STAR --readFIlesIn /scratch/course/2023w300106/arizaaranguren/day1/ex4.2/SRR24348396/SRR24348396_1.fastq /scratch/course/2023w300106/arizaaranguren/day1/ex4.2/SRR24348396/SRR24348396_2.fastq --outSAMtype BAM SortedByCoordinate --twopassMode Basic --outSAMstrandField intronMotif --outFileNamePrefix SRR24348396

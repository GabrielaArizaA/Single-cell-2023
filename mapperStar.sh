
#!/bin/bash
#
#SBATCH --job-name=starTest
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=16G
#SBATCH --time=10:00:00
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
STAR --runThreadN 16 --genomeDir /scratch/course/2023w300106/arizaaranguren/day1/ex4/ncbi_dataset/data/GCF_932526225.1/jaNemVect1.1_STAR --readFilesIn /scratch/course/2023w300106/arizaaranguren/day1/ex4.2/SRR24348396/SRR24348396_1.fastq /scratch/course/2023w300106/arizaaranguren/day1/ex4.2/SRR24348396/SRR24348396_2.fastq --outSAMtype BAM SortedByCoordinate --twopassMode Basic --outSAMstrandField intronMotif --outFileNamePrefix SRR24348396

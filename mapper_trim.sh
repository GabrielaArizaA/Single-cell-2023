#for running mapping with Star in the cluster is nammed mapperStar.sh
#!/bin/bash
#
#SBATCH --job-name=starTest
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=10G
#SBATCH --time=2:00:00
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/arizaaranguren/day2/star.log
#SBATCH --error=/scratch/course/2023w300106/arizaaranguren/error/star.err

#loading modules
module load star/2.7.11a
module list

#create a directory 
cd /scratch/course/2023w300106/arizaaranguren/day2/trimming/
mkdir ex6
cd ex6

#running the mapping
STAR --runThreadN 16 \
--genomeDir /scratch/course/2023w300106/arizaaranguren/day1/ex4/ncbi_dataset/data/GCF_932526225.1/jaNemVect1.1_STAR \
--readFilesIn /scratch/course/2023w300106/arizaaranguren/day2/trimming/SRR24348396_R1.qc.fastq /scratch/course/2023w300106/arizaaranguren/day2/trimming/SRR24348396_R2.qc.fastq \
--outSAMtype BAM SortedByCoordinate \
--twopassMode Basic \
--outSAMstrandField intronMotif \
--outFileNamePrefix SRR24348396_trim_

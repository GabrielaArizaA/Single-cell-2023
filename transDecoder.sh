#modules 
Module load transdecoder
module list

#Running transdecoder
TransDecoder.LongOrfs -t /scratch/course/2023w300106/arizaaranguren/day5/ex10/transcripts.fasta -S -O jaNemVec.transdecoder --complete-orfs-only 

TransDecoder.Predict -t /scratch/course/2023w300106/arizaaranguren/day5/ex10/transcripts.fasta --single_best_only -O jaNemVec.transdecoder

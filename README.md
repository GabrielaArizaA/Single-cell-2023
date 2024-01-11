# Single-cell-2023
Scripts from the course single cell 2023W

## Files

mapperStar.sh = contains the command line for STAR command for mapping the genome and the transcripts

TrimmoNemato.sh =  contains the command line for trimmomat command to eliminate unmapped sequences and adapters from sequencing. To check the quality of the results, fastqc was run and the results are also in github (SRR24348396_R1.qc_fastqc.html and SRR24348396_R2.qc_fastqc.html)

mapper_trim.sh = contains the command line for STAR command after trimming the result from the previous mapping (second mapping) 

samtoolsFilter.sh = contains the command line for samtools view to get the file SRR24348396_trim_Aligned.sortedByCoord.out.bam 

stringtie.sh = contains the command line for stringtie to obtain the annotation.

augustus.sh = contains the command line for runnign augustus with Chr2

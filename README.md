# Single-cell-2023
Scripts from the course single cell 2023W

## Files

### mapperStar.sh 

Contains the command line for STAR command for mapping the genome and the transcripts


### TrimmoNemato.sh

Contains the command line for trimmomat command to eliminate unmapped sequences and adapters from sequencing. To check the quality of the results, fastqc was run and the results are also in github (SRR24348396_R1.qc_fastqc.html and SRR24348396_R2.qc_fastqc.html)


### mapper_trim.sh

Contains the command line for STAR command after trimming the result from the previous mapping (second mapping) 


### samtoolsFilter.sh

Contains the command line for samtools view to get the file SRR24348396_trim_Aligned.sortedByCoord.out.bam 


### stringtie.sh 

Contains the command line for stringtie to obtain the annotation.


### augustus.sh

Contains the command line for runnign augustus with Chr2


### subreads.sh

Script for running the featuresCounts command form the package subreads for generation fo the matrix with the counts of the genes


### R_Studio_counts.R

Script in R for analysing the results obtained in subreads (featureCounts command)


### R_Studio_summary.R 

First script in R for analysing the summary obtained in subreads (featureCounts command)


### principal_component_analysis_plot

Plot generated in R. It is an example for a Principal component analysis plot


### interproscan.sh 

Script to run command interproscan.sh to search for specific sequences in the database


### Rplot-15Jan.pdf

Plot generated in Rstudio, boxplot + violin plot of the read counts per gene (TPM) of each library 


### Transdecoder.sh

Script to run TransDecoder command to get the protein sequences


### Cellranger_ref.sh

Script to run mkref in cellranger to generate a reference also for the next script (cellranger_count)


### Cellranger_count.sh

To create a matrix where we have the information fo the single cell run like barcoding information


### Eggnog.sh 

In this script we ran the script for eggnog which is in conda environment. It is for protein annotations.




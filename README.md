# Single-cell-2023
Scripts from the course single cell 2023W

## Files

mapperStar.sh = contains the command line for STAR command for mapping the genome and the transcripts


TrimmoNemato.sh =  contains the command line for trimmomat command to eliminate unmapped sequences and adapters from sequencing. To check the quality of the results, fastqc was run and the results are also in github (SRR24348396_R1.qc_fastqc.html and SRR24348396_R2.qc_fastqc.html)


mapper_trim.sh = contains the command line for STAR command after trimming the result from the previous mapping (second mapping) 


samtoolsFilter.sh = contains the command line for samtools view to get the file SRR24348396_trim_Aligned.sortedByCoord.out.bam 


stringtie.sh = contains the command line for stringtie to obtain the annotation.


augustus.sh = contains the command line for runnign augustus with Chr2


subreads = script for running the featuresCounts command form the package subreads for generation fo the matrix with the counts of the genes


R_Studio_counts.R = script in R for analysing the results obtained in subreads (featureCounts command)


R_Studio_summary.R = First script in R for analysing the summary obtained in subreads (featureCounts command)


principal_component_analysis_plot = plot generated in R. It is an example for a Principal component analysis plot


interproscan.sh = script to run command interproscan.sh to search for specific sequences in the database


Rplot-15Jan.pdf = Plot generated in Rstudio, boxplot + violin plot of the read counts per gene (TPM) of each library 


Transdecoder.sh = running TransDecoder command to get the protein sequences


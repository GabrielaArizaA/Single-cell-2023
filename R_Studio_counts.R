

##For the actual file 
library (edgeR)
library(reshape2)
library(tidyverse)

#loading data
counts <- read_tsv("counts.tsv",comment = "#")

#We need to remove wwhat we don't need
counts <- counts[, c(1,6:17)]
countsFixed <- (counts [3]/counts[2])*1000
countsFixed
rpk <- counts [,3:13] / unlist(counts[,2])*1000
rpk [1:5,1:5]

#trasncripts per million
tpm <-cpm(rpk)

#how many reads per gene between library
rownames(tpm) <- unlist(counts[,1])

#we can filter the table 
tpmFiltered <- tpm[rowSums(tpm)>0,]

#format for ggplot
melNorm <- melt(tpmFiltered)

#compare between libraries
ggplot(melNorm, aes(x=Var2, y=value, col=Var2)) + geom_violin() + geom_boxplot(width=0.1) + coord_flip() +  scale_color_viridis_d() + labs (y="", x="Libraries") + theme_bw() + scale_y_log10() + labs(y="Read counts per gene (TPM)", x="", col ="Library")

#graph in violin plot
ggplot(melNorm, aes(x=Var2, y=value, col=Var2)) + geom_violin() + coord_flip() + scale_color_viridis_d() + labs (y="", x="Libraries") + theme_bw() + scale_y_log10() + labs(y="Read counts per gene (TPM)", x="", col ="Library")

#graph without x names
ggplot(melNorm, aes(x=Var2, y=value, col=Var2)) + geom_violin() + geom_boxplot(width=0.1) +  scale_color_viridis_d() + labs (y="", x="Libraries") + theme_bw() + scale_y_log10() + labs(y="Read counts per gene (TPM)", x="", col ="Library") + theme(axis.text.x =element_blank())

##filtering data with tidyverse

#For genes that are expressed more than once
melNorm %>% dplyr::filter(value>=1) %>% group_by(Var1) %>% summarise(count=n())

#plot
melNorm %>% dplyr::filter(value>=1) %>% group_by(Var1) %>% summarise(count=n()) %>% ggplot(aes(y=count, x=1)) +geom_violin()

#plot density
melNorm %>% dplyr::filter(value>=1) %>%       #filter tpm values gretaer than 1 
  ggplot(aes(y=value, col=Var2)) +            #plotting and setting aesthetics
  geom_violin(aes(x=Var2)) +                  #we chose violin plot
  scale_y_log10() +                           #we scale the y axis to soften the long distance
  geom_boxplot(width=0.15, aes (x=Var2)) +    #we draw a boxplot
  labs (y='log of frequency', x='log of gene expression') #labeling axis



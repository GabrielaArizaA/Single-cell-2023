#Upload file
summary <- read_tsv("counts.tsv.summary",comment = "#")

#To visualize the columns and rows,[row,column]
summary[1,]
summary[1:10,] #from row 1 to 10 every column 

#Proportion of the assigned read to the total number of reads
#We are scaling them to compare them
colSums(summary[, 2:12]) #Total number of reads per

library(edgeR)
scaleCPM <- cpm(summary[,2:12])

#We now boxplot the scaleCMP
boxplot(scaleCPM[1,])
#for no features
boxplot(scaleCPM[12,], col ="skyblue")

#for no Ambiguity
boxplot(scaleCPM[14,], col ="plum")

library(reshape2)
#assignate names to the rows in scaleCPM
row.names(scaleCPM) <- unlist(summary[,1]) #to unlist so they can become a vector

# [ ] selecting, condition is that the sum has to be greater than cero 
scaleCPM [rowSums(scaleCPM)>0, ]

#To change the matrix that we have into three columns, for ggplot
scaleCPMMelt <- melt(scaleCPM [rowSums(scaleCPM)>0, ])
scaleCPMMelt

#ggplot
ggplot(scaleCPMMelt, aes(x=Var1, y=value, col=Var1)) + geom_boxplot() + coord_flip() + scale_color_viridis_d() + labs (y="", x="Number of reads (CPM)") + theme_bw()

#ggplot tuneada
ggplot(scaleCPMMelt, aes(x=Var1, y=value)) + geom_boxplot(aes(col=Var1)) +geom_jitter(width=0.1, aes(col=Var2)) + coord_flip() + labs (y="", x="Number of reads (CPM)") + theme_bw()

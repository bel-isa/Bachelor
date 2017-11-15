#Packages that need to be installed: oompaBase, mclust, PreProcess, ClassDiscovery

library(ClassDiscovery)

#Load data

metab <- read.table("Metabolites.csv",sep=",")

#Compute bimodality indices

metab.bi <- bimodalIndex(metab)

#Show bimodality index (bi) and proportion (pi)

bi <- metab.bi[,6]
pi <- metab.bi[,5]

#Compute cut between distributions

{l <- length(pi)
cuts <- vector("numeric",l)
    for(i in 1:l) cuts[i] <- quantile(metab[,i],pi[i])}

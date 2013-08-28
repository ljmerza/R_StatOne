
#correlations in R
#hw 2 lecture 6 example script
#read data plot histogram, descriptive, scatterplots, correlations

library(psych)

impact<-read.table("datafiles_stats1.ex.02.txt",header=T)
class(impact)
names(impact)

hist(impact$memory.visual,xlab="visual memory",main="histogram",col="red")

describe(impact)

plot(impact$memory.verbal ~ impact$memory.visual, main="Scatterplot", yalb="verbal memory", xlab="visual memory")
abline(lm(impact$memory.verbal ~ imapct$memory.visual), col="blue")

cor(impact$memory.verbal,impact$memory.visual)
cor.test(impact$memory.verbal,impact$memory.visual)

cor(impact)
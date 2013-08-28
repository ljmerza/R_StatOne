#Statistics One,2 assignment
#Write an R script that does the following:
#Provides descriptive statistics for all 8 measures, for each condition.
#Provides an 8x8 correlation matrix, for each condition.

library(psych)

data<-read.table(file.choose(), header = T)

names(data)
class(data)

print("Designed sports training")
describe(data)

#correlation
print("DES")
cor(data$pre.wm.s1[data$cond=="des"], data$pre.wm.s2[data$cond=="des"])
cor(data$post.wm.s1[data$cond=="des"], data$post.wm.s2[data$cond=="des"])
cor(data$pre.wm.v1[data$cond=="des"], data$pre.wm.v2[data$cond=="des"])
cor(data$post.wm.v1[data$cond=="des"], data$post.wm.v2[data$cond=="des"])


print("AER")
cor(data$pre.wm.s1[data$cond=="aer"], data$pre.wm.s2[data$cond=="aer"])
cor(data$post.wm.s1[data$cond=="aer"], data$post.wm.s2[data$cond=="aer"])
cor(data$pre.wm.v1[data$cond=="aer"], data$pre.wm.v2[data$cond=="aer"])
cor(data$post.wm.v1[data$cond=="aer"], data$post.wm.v2[data$cond=="aer"])

print("AER PRE&POST")
cor(data$pre.wm.s1[data$cond=="aer"], data$post.wm.s1[data$cond=="aer"])
cor(data$pre.wm.s2[data$cond=="aer"], data$post.wm.s2[data$cond=="aer"])
cor(data$pre.wm.v1[data$cond=="aer"], data$post.wm.v1[data$cond=="aer"])
cor(data$pre.wm.v2[data$cond=="aer"], data$post.wm.v2[data$cond=="aer"])

print("DES PRE&POST")
cor(data$pre.wm.s1[data$cond=="des"], data$post.wm.s1[data$cond=="des"])
cor(data$pre.wm.s2[data$cond=="des"], data$post.wm.s2[data$cond=="des"])
cor(data$pre.wm.v1[data$cond=="des"], data$post.wm.v1[data$cond=="des"])
cor(data$pre.wm.v2[data$cond=="des"], data$post.wm.v2[data$cond=="des"])




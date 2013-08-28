#ANOVA tests
libray(psych)
wm<-read.table(file.choose(), header=T)

#ANOVA
aov.model = aov(wm.t$gain~wm.t$cond)
summary(aov.model)
aov.table=summary(aov.model)

#Effect size for ANOVA
ss = aov.table[[1]]$"Sum Sq"
eta.sq=ss[1]/(ss[1]+ss[2])
eta.sq

#Post-hoc tests
TurkeyHSD(aov.model)

#levene's test
libray(car)
leveneTest(wm.t$gain), wm.t$cond, center="mean")
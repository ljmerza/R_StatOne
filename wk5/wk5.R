library(psych)
assign=read.table(file.choose(),header=T)

# create subsets of data for training types sp and wm
sp = subset( assign, assign$training == "SP")  
wm = subset( assign, assign$training == "WM")

#dependent t-test for SP
t.test(sp$pre.uat, sp$post.uat, paired =T)

#cohens d for dependent t-test
d.c = (sp$pre.uat[4,3])/(sp$post.uat[4,4])
d.c





#dependent t-tests
t.test(wm.c$pre, wm.c$post, paired =T)
t.test(wm.t$pre, wm.t$post, paired =T)

#cohens d for dependent t-test
d.c = (wm.c.out[4,3])/(wm.c.out[4,4])
d.c
d.t = (wm.t.out[4,3])/(wm.t.out[4,4])

#cohens d for independent t-test
pooled.sd = 79/118*wm.t.out[4,4] + (39/118*wm.c.out[4,4])
d.ct = (wm.t.out[4,3]-wm.c.out[4,3]) / pooled.sd
d.ct


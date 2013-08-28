#week 2 last lecture
#test/retest reliability analysis, column format

library(psych)

impact.col<-read.table("ex2.txt", header=T)
names(impact.col)

describe(impact.col)

cor(impact.col$memory.verbal.A, impact.col$memory.verbal.B)
cor(impact.col$memory.visual.A, impact.col$memory.visual.B)
cor(impact.col$speed.vismotor.A, impact.col$speed.vismotor.B)
cor(impact.col$speed.general.A, impact.col$speed.general.B)
cor(impact.col$impluse.control.A, impact.col$impluse.control.B)

describe.by(impact.row, impact.row$test)
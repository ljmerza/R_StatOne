library(psych)

endur<-read.table(file.choose(), header = T)

names(data)
class(data)

cor(endur$endurance,endur$age)
cor(endur$endurance,endur$activeyears)

model2 = lm(endur$endurance ~ endur$age)
model3 = lm(scale(endur$endurance) ~ scale(endur$age))
model4 = lm(endur$endurance ~ endur$activeyears)
model5 = lm(scale(endur$endurance) ~ scale(endur$activeyears))
model6 = lm(endur$endurance ~ endur$age + endur$activeyears)
model7 = lm(scale(endur$endurance) ~ scale(endur$age) + scale(endur$activeyears))

summary(model2)
summary(model3)
summary(model4)
summary(model5)
summary(model6)
summary(model7)
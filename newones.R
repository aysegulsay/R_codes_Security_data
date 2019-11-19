idethree = read.csv("ide3.csv")

summary(idethree)
idethree$Subject=factor(idethree$Subject)

library(plyr)
ddply(idethree ,~IDE , function(data) summary(data$Time))
ddply(idethree ,~IDE ,summarise ,Time.mean=mean(Time) , Time.sd=sd(Time))

hist(idethree[idethree$IDE == "PyCharm",]$Time)

hist(idethree[idethree$IDE =="VStudio",]$Time)

plot(Time ~IDE, data=idethree)
plot(idethree$Time ~idethree$IDE)

shapiro.test(idethree[idethree$IDE =="PyCharm",]$Time)

m = aov(idethree$Time ~ idethree$IDE , idethree)
shapiro.test(residuals(m))
qqnorm(residuals(m));qqline(residuals(m))

leveneTest(idethree$Time ~ idethree$IDE, idethree, center=median)

m= aov(idethree$Time ~ idethree$IDE ,idethree)
anova(m)

plot(idethree$Time ~ idethree$IDE, idethree)

library(multicomp)
library(coin)

kruskal.test(idethree$Time~idethree$IDE ,idethree, distribution="asymptotic")
kruskal_test(idethree$Time ~idethree$IDE ,idethree ,distribution="asymptotic")


vs.ec = wilcox.test(idethree[idethree$IDE == "VStudio",]$Time , idethree[idethree$IDE == "Eclipse",]$Time , exact = FALSE)
vs.py =wilcox.test(idethree[idethree$IDE =="VStudio", ]$Time ,idethree[idethree$IDE == "PyCharm",]$Time , exact = FALSE)
ec.py = wilcox.test(idethree[idethree$IDE == "Eclipse",]$Time ,idethree[idethree$IDE == "PyCharm",]$Time , exact = FALSE)
p.adjust(c(vs.ec$p.value, vs.py$p.value, ec.py$p.value), method="holm")

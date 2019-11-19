dt = read.csv("mean1.csv")
summary(dt)
is.numeric(dt$x)
View(dt)


barplot(dt$x)

da <- read.csv("mean1.csv", na.strings = c("","NA"))
mean(na.omit(da['x'])[[1]])
mean(dt$x)
tmp <- na.omit(da['x'])[[1]]
barplot(table(tmp))
plot(dt)
hist(dt$x)
qqnorm(dt$x)
qqline(dt$x)


md <- read.csv("median1.csv" , na.strings = c("","NA"))

summary(md)
median(md$x)
View(md)
hist(md$x)


co = read.csv("coffee-talk.csv")
summary(co)
View(co)
co = co [co$I.have.read..understood.and.signed.the.informed.consent.form.and.I.consent.to.taking.part.in.this.study.=="I consent",]

co$How.many.cups.of.coffee.do.you.drink.per.week.=as.numeric(as.character(co$How.many.cups.of.coffee.do.you.drink.per.week.))

summary(co$How.many.cups.of.coffee.do.you.drink.per.week.)

boxplot(co$How.many.cups.of.coffee.do.you.drink.per.week.)

co = co[co$How.many.cups.of.coffee.do.you.drink.per.week.<100,]

co$Please.state.your.gender=as.factor(co$Please.state.your.gender)



a = aov(co$How.many.cups.of.coffee.do.you.drink.per.week.~ co$Please.state.your.gender, co)
summary(a)
shapiro.test(a$residuals)
qqnorm(a$residuals); qqline(a$residuals)

#leveneTest(co$How.many.cups.of.coffee.do.you.drink.per.week.~co$Please.state.your.gender,co)
t.test(co$How.many.cups.of.coffee.do.you.drink.per.week.~ co$Please.state.your.gender , co)

library(car)
leveneTest(co$How.many.cups.of.coffee.do.you.drink.per.week. ~ co$Please.state.your.gender, co)
levene.test(co$How.many.cups.of.coffee.do.you.drink.per.week. ~ co$Please.state.your.gender, co)


co = read.csv("coffee-talk.csv")

co$How.many.cups.of.coffee.do.you.drink.per.week.=factor(co$How.many.cups.of.coffee.do.you.drink.per.week.)
codetabs = xtabs (~How.many.cups.of.coffee.do.you.drink.per.week., data=co)
codetabs

co$Where.do.you.drink.your.coffee.most.of.the.time.=factor(co$Where.do.you.drink.your.coffee.most.of.the.time.)
codetabs = xtabs (~Where.do.you.drink.your.coffee.most.of.the.time., data=co)
codetabs
chisq.test(codetabs)
binom.test(codetabs)


co$Please.state.your.gender=factor(co$Please.state.your.gender)

codetabsGender = xtabs (~Where.do.you.drink.your.coffee.most.of.the.time.+Please.state.your.gender , data=co)

codetabsGender


co$Please.state.your.gender=factor(co$Please.state.your.gender)
codetabscup = xtabs (~ How.many.cups.of.coffee.do.you.drink.per.week.+Please.state.your.gender , data=co)
codetabscup
fisher.test(codetabscup)
chisq.test(codetabscup)

a = aov(co$How.many.cups.of.coffee.do.you.drink.per.week.~co$Please.state.your.gender , co)

shapiro.test(residuals(a))
barplot( co$Please.state.your.gender, co$How.many.cups.of.coffee.do.you.drink.per.week.)
is.numeric(co$How.many.cups.of.coffee.do.you.drink.per.week.)
hist(co$How.many.cups.of.coffee.do.you.drink.per.week.)



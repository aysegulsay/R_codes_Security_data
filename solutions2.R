df = read.csv("mean1.csv")

df = read.csv("mean1.csv") 
summary(df)
is.numeric(df$x)
plot(df)
hist(df$x)
View(df)


df3 = read.csv("median1.csv")
hist(df3$x)
median(df3$x)


co = read.csv("coffee-talk.csv")
View(coffee)

coffee = coffee [coffee$I.have.read..understood.and.signed.the.informed.consent.form.and.I.consent.to.taking.part.in.this.study.== "I consent",]

coffee$How.many.cups.of.coffee.do.you.drink.per.week.=as.numeric(as.character(coffee$How.many.cups.of.coffee.do.you.drink.per.week.))
co$How.many.cups.of.coffee.do.you.drink.per.week.=as.numeric(as.character(co$How.many.cups.of.coffee.do.you.drink.per.week.))
summary(co$How.many.cups.of.coffee.do.you.drink.per.week.)


boxplot(co$How.many.cups.of.coffee.do.you.drink.per.week.)
co = co[co$How.many.cups.of.coffee.do.you.drink.per.week.<100,]
co$Please.state.your.gender=as.factor(co$Please.state.your.gender)
a = aov(co$How.many.cups.of.coffee.do.you.drink.per.week.~ co$Please.state.your.gender , co)
summary(a)

leveneTest(co$How.many.cups.of.coffee.do.you.drink.per.week. ~ co$Please.state.your.gender , co)
t.test(co$How.many.cups.of.coffee.do.you.drink.per.week. ~ co$Please.state.your.gender , co)

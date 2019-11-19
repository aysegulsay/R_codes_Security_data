dt <- read.csv("websearch3.csv" , na.strings = c("","NA"))

mean(dt[["Searches"]])
mean(na.omit(dt['Searches'])[[1]])

median(dt[["Searches"]])
median(na.omit(dt['Searches'])[[1]])

tmp<- na.omit(dt['Effort'])[[1]]
barplot(table(tmp))
mean(na.omit(dt['Effort'])[[1]])
mean(dt$Effort)
barplot(dt$Effort)

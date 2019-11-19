#ReadIn
data <- read.csv("./websearch3.csv", na.strings=c("","NA"))


#Task2
#a
mean(na.omit(data['Searches'])[[1]])
#b
median(na.omit(data['Searches'])[[1]])
#c


#Task3
#a
tmp <- na.omit(data['Effort'])[[1]]
barplot(table(tmp))
#b
mean(na.omit(data['Effort'])[[1]])





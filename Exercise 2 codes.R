dt = readxl::read_xlsx("Advice Block 1.xlsx")
View("Advice Block 1.xlsx")
dc = read.csv("AdviceBlock1.csv")
View(dc)
View(dt)
dt$`For each of the following pieces of advice, please rate on a scale from 1 to 5 how EFFECTIVE you think the advice would be at protecting your security online, IF YOU FOLLOWED IT.`==
  factor(dt$`For each of the following pieces of advice, please rate on a scale from 1 to 5 how EFFECTIVE you think the advice would be at protecting your security online, IF YOU FOLLOWED IT.`)


#DSO106 L3 non-linear regression lesson content

library("tidyr")
library("ggplot2")
library("dplyr")

quadPlot <- ggplot(bluegill_fish, aes(x = age, y=length)) + geom_point() + stat_smooth(method = "lm", formula = y ~x + I(x^2), size =1)
quadPlot

Agesq <- bluegill_fish$age^2
quadModel <- lm(bluegill_fish$length~bluegill_fish$age+Agesq)
summary(quadModel)

# To do exponential modeling

exMod <- lm(log(exponential$Count)~exponential$Period)
summary(exMod)
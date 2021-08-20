library ("dplyr")

frostedflakes
head(frostedflakes)


t_ind <- t.test(frostedflakes$Lab, frostedflakes$IA400, alternative="two.sided", var.equal=FALSE)
print(t_ind)


library("reshape2")
ff <- melt(frostedflakes, id="x") 

ggplot(ff) + geom_boxplot(aes(x = variable, y = value)) +
  xlab("Test Method") + ylab("Percentage of Sugar")
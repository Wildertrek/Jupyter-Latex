library("ggplot2")
plot <- ggplot(superheroes, aes(Alignment))
plot + geom_bar()
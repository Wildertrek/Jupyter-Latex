library("dplyr")
library("rcompanion")
library("car")

avocados$AveragePrice <- as.numeric(avocados$AveragePrice)

plotNormalHistogram(avocados$AveragePrice)

avocados$AveragePriceSQRT <- sqrt(avocados$AveragePrice)

plotNormalHistogram(avocados$AveragePriceSQRT)

regions<- avocados %>% filter(region %in% c('Albany', 'Houston', 'Seattle'))

bartlett.test(AveragePriceSQRT ~ region, data=regions)


fligner.test(AveragePrice ~ region, data=regions)

# Both Bartlett's test and the Fligner's test violated the assumption of homogeneity of variance.


# ANOVA & PAIRWISE T-TESTS
str(avocados$AveragePrice)
avocados$AveragePrice <- as.numeric(avocados$AveragePrice)


avocadosANOVA <- lm(AveragePrice ~ region, data=avocados)

summary(avocadosANOVA)

pairwise.t.test(regions$AveragePrice, regions$region, p.adjust="none")

pairwise.t.test(regions$AveragePrice, regions$region, p.adjust="bonferroni")

# There is a significant difference between the prices in Albany, Houston and Seattle.

# DETERMINE MEANS & DRAW CONCLUSIONS

regionsMeans <- regions %>% group_by(region) %>% summarize(Mean = mean(AveragePrice))
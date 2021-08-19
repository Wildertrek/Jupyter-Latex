#scenario 1
prop.test(x = 28, n = 94, p = 0.16, alternative = "two.sided")

#scenario 2
df2 <- read.csv("L10_2.csv")

df2.expanded <- df2[rep(row.names(df2), df2$Number.of.applications), 1:2]

library("gmodels")
CrossTable(df2.expanded$Clinic, df2.expanded$Antiseptic.Type,  
           chisq = TRUE, expected = TRUE, sresid=TRUE, format="SPSS")

#scenario 3
library(tidyr)
df3 <- read.csv("L10_3.csv")

df3$Group.A <- as.numeric(gsub("[\\$,]", "", df3$Group.A))
df3$Group.B <- as.numeric(gsub("[\\$,]", "", df3$Group.B))
df3$Group.C <- as.numeric(gsub("[\\$,]", "", df3$Group.C))
df3$Group.D <- as.numeric(gsub("[\\$,]", "", df3$Group.D))

df3.reformat <- gather(df3, key="Group", value="Price")

library("dplyr")
library("rcompanion")
library("car")
plotNormalHistogram(df3.reformat$Price) # normal

bartlett.test(Price ~ Group, data=df3.reformat)

df3.reformat$Group <- as.factor(df3.reformat$Group)
fligner.test(Price ~ Group, data=df3.reformat)

ANOVA <- aov(df3.reformat$Price ~ df3.reformat$Group)
summary(ANOVA)

ANOVA <- lm(Price ~ Group, data=df3.reformat)
Anova(ANOVA, Type="II", white.adjust=TRUE)


#scenario 4
prop.test(x=c(374, 171), n=c(374+129, 171+74),
          alternative = "two.sided", correct = FALSE)
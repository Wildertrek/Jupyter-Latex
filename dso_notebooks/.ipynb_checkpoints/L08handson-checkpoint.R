#DSO104 MANOVAS Lesson 8 Handson

library("mvnormtest")
library("car")

data <- read.csv("heartAttacks.csv")

#independent variable is gender
# dependent variables are trestbps and chol

str(data$trestbps)
str(data$chol)

#change to numeric data type
data$trestbps <- as.numeric(data$trestbps)
data$chol <- as.numeric(data$chol)
data$sex <- as.numeric(data$sex)

#Change to Char/Factor
data$sex <- as.character(data$sex)
data$sex <- as.factor(data$sex)

#feature selection
keeps <- c("sex", "trestbps", "chol")
data <- data[keeps]

#assumption sample size

library(plyr)

count(data, "sex") #assumption NOT violated - more cases per number of dependent variables for male and female


#feature selection for shapiro test
keeps1 <- c("trestbps", "chol")
data1 <- data[keeps1]

#multivariate normality
mshapiro.test(t(data1))  #violates this assumption, p < .05

#Homogeneity of Variance
leveneTest(trestbps ~ sex, data=data) #this dependent variable DOES NOT violate this assumptiom
leveneTest(chol ~ sex, data=data)     #this dependent variable VIOLATES this assumptiom

#Absence of Multicollinearity
cor.test(data$trestbps, data$chol, method="pearson", use="complete.obs") #below .7, no strong multicollinearity

#MANOVA
MANOVA <- manova(cbind(trestbps, chol) ~ sex, data = data)
summary(MANOVA)

summary.aov(MANOVA, test = "wilks") 

#There is a significant difference in cholesterol in relation to gender.
#However cholesteral variable violated homogeneity assumption

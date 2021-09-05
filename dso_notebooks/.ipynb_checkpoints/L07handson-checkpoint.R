#This is to see if the Night.minutes differ by whether they have an international phone plan, holding voice mail plans constant.  

## Testing Assumptions

### Normality - Need to examine both GPA and TOEFL score

library("rcompanion")
library("car")
library("effects")
library("multcomp")

plotNormalHistogram(cellPhone$Night.Mins)

#### Wow, that already looks normally distributed! No transformation necessary. 

### Homogeneity of Variance

leveneTest(Night.Mins~International.Plan, data=cellPhone)

# Results were not significant, so the assumption is met!

### Homogeneity of Regression Slopes

Homogeneity_RegrSlp = lm(Night.Mins~vMail.Plan, data=cellPhone)
anova(Homogeneity_RegrSlp)

# This assumption was met as well! 

### Sample size is met - need 20 per IV or CV and I have 2, so need at least 40 and there are over 4,000 cases!

## Running the Analysis

ANCOVA = lm(Night.Mins~vMail.Plan + International.Plan*vMail.Plan, data=cellPhone)
anova(ANCOVA)

# Whether a client has an international plan or not does not influence the number of night minutes he or she uses, even holding whether they have a voice mail plan constant.


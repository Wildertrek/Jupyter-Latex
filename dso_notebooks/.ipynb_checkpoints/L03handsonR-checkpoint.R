library("gmodels")
library("tidyr")
library("dplyr")

# Part I
loans <- read.csv("loans.csv")

CrossTable(loans$term, loans$loan_status, fisher=TRUE, chisq = TRUE, expected = TRUE, sresid=TRUE, format="SPSS")

# 36 month term loans are more likely to be fully paid off and less likely to be charged off or current.  The reverse is true for 60 month loans.

# Part II

loans$Issue_dateR <- as.Date(loans$issue_d, format="%b-%d")

loans1 <- separate(loans, Issue_dateR, c("Ignore", "Issue_Month", "Issue_Year"), sep="-")


loans1$Issue_MonthR <- NA
loans1$Issue_MonthR[loans1$Issue_Year == "07"] <- 0
loans1$Issue_MonthR[loans1$Issue_Year == "11"] <- 1

loans1$RentvOwn <- NA
loans1$RentvOwn[loans1$home_ownership == "RENT"] <- 0
loans1$RentvOwn[loans1$home_ownership == "OWN"] <- 1


CrossTable(loans1$RentvOwn, loans1$Issue_MonthR, fisher=TRUE, chisq = TRUE, mcnemar = TRUE, expected = TRUE, sresid=TRUE, format="SPSS")

# Although the overall test is significant, when standardized residuals are examined, it looks like the number of people renting to owning houses is similar from 2007 to 2011.

# Part III

loans %>% group_by(loan_status) %>% summarize(count=n())

observed = c(5627, 1140, 32950)
expected = c(0.10, 0.75, 0.15)
chisq.test(x = observed, p = expected)


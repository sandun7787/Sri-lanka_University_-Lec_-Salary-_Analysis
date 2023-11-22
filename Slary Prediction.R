#Correlation Analysis


#Method:person

#Dependent variable: salary
#Independent Variable:year since phD

attach(Salaries)
cor.test(salary,yrs.since.phd,method = "pearson",alternative = "two.sided")

#Method:spearman 

cor.test(salary,yrs.since.phd,method = "spearman",alternative = "two.sided")

plot(salary~yrs.since.phd,
     main="Salary vs Yrs Since PhD",
     xlab="Years",
     ylab="Annaul Salary($)")
abline(lm(salary~yrs.since.phd),col="green")         


#Alternative: Using R commander 

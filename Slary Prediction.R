# Correlation Analysis 

#Method: Pearson
#Dependent variable: salary
#Independent variable : Yrs since PhD

attach(Salaries)
cor.test(salary,yrs.since.phd,method="pearson",alternative= "two.sided")

#Method:spearman

cor.test(salary,yrs.since.phd,method="spearman",alternative= "two.sided")

#Graphical Analysis

plot(salary~yrs.since.phd,
     main="Salary vs Yrs Since PhD",
     xlab="Years",
     ylab="Annaul Salary($)")
abline(lm(salary~yrs.since.phd),col="Red")         

#Alternative: Using R commander 
library("Rcmdr")

scatterplot(salary~yrs.since.phd, regLine=TRUE, smooth=FALSE, 
            boxplots=FALSE, xlab="Years", ylab="Annual Salary($)", 
            main="Salary vs Years Since PhD", data=Salaries,col="Red")


# Simple Linear Regression Analysis

library(Rcmdr)

#Dependent variable: salary
#Independent variable : Yrs since PhD        
My_Sal_PhD_Model<-lm(salary~yrs.since.phd,model=TRUE)         
My_Sal_PhD_Model 
summary(My_Sal_PhD_Model)


cor.test(salary,yrs.service,method = "pearson",
         alternative = "two.side")

#Graphical Analysis

plot(salary~yrs.service,
     main="Alary vs Yrs of Service",
     xlab="Years",
     ylab = "Annual Salary($)")
abline(lm(salary~yrs.service),col="Red")

# Simple Linear Regression Analysis

#Dependent variable: salary
#Independent variable : Yrs of Service    

My_Sal_Service_Model<-lm(salary~yrs.service,model=TRUE)         
My_Sal_Service_Model 
summary(My_Sal_Service_Model)


library('plyr')
Salaries$rank<-revalue(rank, c(Prof = 3, AsstProf = 1,AssocProf=2))         
write.csv(Salaries,"Salaries_New.csv")
detach(Salaries)
attach(Salaries_New)


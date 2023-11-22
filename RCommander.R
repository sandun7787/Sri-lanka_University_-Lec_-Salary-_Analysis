
scatterplot(X~yrs.since.phd, regLine=FALSE, 
  smooth=FALSE, boxplots=FALSE, xlab="Years", 
  ylab="Annual Salaries($)", data=Salaries)
scatterplot(X~yrs.since.phd, log="xy", regLine=TRUE, 
  smooth=list(span=0.5, spread=TRUE), boxplots='xy', 
  jitter=list(x=1, y=1), xlab="Years", 
  ylab="Annual Salaries($)", 
  main="Slary vs  YersSince", data=Salaries)


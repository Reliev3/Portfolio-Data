##CHAPTER 7: DESCRIPTIVE STATISTICS AND VISUALIZING DATA##
library("foreign")
hts<-read.csv("HTS.household.10regions.csv")

#frequency table
hhsize<-table(hts$hhsize)
hhsize
prop.table(hhsize)
ftable<-cbind(hhsize,prop.table(hhsize))
colnames(ftable)<-c("count","percentage")
ftable

#central tendency and dispersion
summary(hts$hhsize)
sd(hts$hhsize)
var(hts$hhsize)

#cross tabulation
xtab<-xtabs(~income_cat+anyvmt,data=hts)
xtab
addmargins(prop.table(xtab,1),2)

#informative graphs
hist(hts$hhsize,freq=FALSE)
lines(density(hts$hhsize,adjust=5), col="blue", lty="dotted", lwd=1) #add density line

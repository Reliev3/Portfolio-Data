##CHAPTER 8: CHI-SQUARE##
library("foreign")
hts<-read.csv("HTS.household.10regions.csv")

table<-table(hts$sf,hts$anywalk)
table
addmargins(prop.table(table,1),2)
chisq.test(hts$sf,hts$anywalk) #chi-square test

library(vcd)
assocstats(table) #symmetric measures for the chi-square test

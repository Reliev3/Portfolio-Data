library(foreign)



muni_fiscal<- read.csv("muni_econ_fiscal.csv")




results<-lm(fund_balance_all_funds_long_term_liabilities ~ log(population), data= muni_fiscal)


summary(results)





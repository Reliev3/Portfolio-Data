library(foreign)


#Aqui se extraen los datos
muni_fiscal<- read.csv("muni_econ_fiscal.csv")



#Regresion
results<-lm(fund_balance_all_funds_long_term_liabilities ~ log(sum_of_sales_value_of_shipments_or_revenue), data= muni_fiscal)

#Despliegue de resultados de regresion
summary(results)

#Numero de observaciones
(n <- nobs(results))



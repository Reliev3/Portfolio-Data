
library(foreign)


muni_fiscal <- read.csv("muni_econ_fiscal.csv")

regresion_multiple <- lm(fund_balance_all_funds_long_term_liabilities ~ 
log(area_square_miles) + log(sum_of_sales_value_of_shipments_or_revenue), data = muni_fiscal)

summary(regresion_multiple)

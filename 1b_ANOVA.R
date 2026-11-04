##CHAPTER 11: ANALYSIS OF VARIANCE (ANOVA)##
###Openning packages
library("foreign")

###Creating data frame
empleos<-read.csv("empleos_municipios.csv")

###Convert "region" variable in factor form
empleos$naics <- as.factor(empleos$naics)


###Create boxplot of values
boxplot<-boxplot(empleos$lnsalariototal~empleos$naics,main="Anova",xlab="naics",ylab="lnsalariototal")

###Identify outliers
outliers = boxplot$out
empleos[empleos$lnsalariototal %in% outliers, c(2,11)]

###Remove outliers
empleos2<-empleos[-c(125, 288, 293, 426, 448, 456, 457, 461, 488, 525, 540, 545, 666, 669, 671, 1036, 1044, 1173, 1306, 1308, 
1329, 1333, 1335, 1803, 1966, 2094, 2099, 2217, 2430, 2431, 2435, 2692, 2694, 2702, 2715, 2716, 2718, 2719,
2720, 2721, 2722, 2724, 2725, 2727, 2728, 2729, 2786, 2904, 2932, 3145),]


###Create histogram to test for normal distribution
hist(empleos2$lnsalariototal)

###Perform ANOVA
fit<-aov(empleos2$lnsalariototal~empleos2$naics)
summary(fit)





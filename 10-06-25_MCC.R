#Packages that need to be installed: gplot, ROCR

library(ROCR)

#Create vectors containing predicted groups of data and true class labels

predictions <- c(1,2,2,2,1,1,2,1,....)
groups <- c(1,1,1,1,2,2,2,2,...)

#Transform data into standardized format

metab.pre <- prediction(predictions,groups)

#Compute sensitivity, accuracy and MCC

performance(metab.pre,"measurement")

performance(metab.pre,"spec") #Specificity

performance(metab.pre,"sens") #Sensitivity

performance(metab.pre,"acc") #Accuracy

performance(metab.pre,"phi") #Matthews correlation coefficient
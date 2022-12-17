#simple linear regression

#calling libraries
library(caTools)
#install.packages("randomForest")
library(randomForest)

#importing dataset
setwd("C:/Users/zaida/R_practical")
dataset = read.csv('titanic.csv')
dataset = dataset [6:8]

#splitting the dataset into train set ans test set
split = sample.split(dataset$Survived, SplitRatio=2/3)

training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

#Fitting Random Forest to the train set
set.seed(120)
classifier_RF = randomForest(x=training_set[-3],
                             y=training_set$Survived,
                             ntree=500)

#Predicting the Test Set result
y_pred = predict(classifier_RF, newdata=test_set[-3])

#confusion Matrix
confusion_mtx = table(test_set[,3], y_pred)

#Plotting model
plot(classifier_RF)

#importance plot
importance(classifier_RF)

#Variable importance plot
varImpPlot(classifier_RF)

classifier_RF
confusion_mtx

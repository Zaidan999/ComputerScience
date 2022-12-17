#simple linear regression

#calling libraries
library(caTools)

#importing dataset
setwd("C:/Users/zaida/R_practical")
dataset = read.csv('Salary_data.csv')
dataset

#setting the seed
set.seed(123)

#splitting the dataset into train set ans test set
split = sample.split(dataset$Salary, SplitRatio=2/3)

training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

#fitting simple linear regression to the training set
regressor = lm(formula = Salary ~ YearsExperience,
               data = training_set)
regressor = lm(formula = Salary ~ YearsExperience,
               data = training_set)

#analyzing the model
summary(regressor)

#predicting the test set results
y_pred = predict(regressor, newdata = test_set)

#Visualizing the training set results
library(ggplot2)
ggplot() + 
  geom_point(aes(x=training_set$YearsExperience,
                 y=training_set$Salary), colour='red') +
  geom_line(aes(x=training_set$YearsExperience,
                y=predict(regressor, newdata=training_set)),
            colour='blue') +
  ggtitle('Salary vs Experience (Training Set)') +
  xlab('Years of experience') +
  ylab('Salary')

#Visualizing the test set results
library(ggplot2)
ggplot() + 
  geom_point(aes(x=test_set$YearsExperience,
                 y=test_set$Salary), colour='red') +
  geom_line(aes(x=training_set$YearsExperience,
                y=predict(regressor, newdata=training_set)),
            colour='blue') +
  ggtitle('Salary vs Experience (Test Set)') +
  xlab('Years of experience') +
  ylab('Salary')
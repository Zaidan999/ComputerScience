#Decision Tree CLassification

#Setting the working directory
setwd("C:/Users/zaida/R_practical")

#Importing the dataset
dataset = read.csv('Social_Network_Ads.csv')
dataset = dataset [3:5]

#Encoding the target feature as factor
dataset$Purchased = factor(dataset$Purchased, levels =c(0,1))

#Splitting the dataset into the Training set and Test set
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

#Feature scaling
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])

#Fitting decision tree classification to the training set
#install.packages('rpart')
library(rpart)
classifier = rpart(formula = Purchased ~ .,
                   data = training_set)

#Predicting the test set results
y_pred = predict(classifier, newdata = test_set[-3], type = 'class')

#making the confusion matrix
cm = table(test_set[, 3], y_pred)

#visualizing the training set results
library(ElemStatLearn)
set = training_set
x1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
x2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(x1,x2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set, type = 'class')
plot(set[, -3],
     main = 'Decision Tree Classification (Training Set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(x1), ylim = range(x2))
contour(x1, x2, matrix(as.numeric(y_grid), length(x1), length(x2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[,3] == 1, 'green4', 'red3'))

#plotting the tree
plot(classifier)
text(classifier)

#visualizing the test set results
library(ElemStatLearn)
set = test_set
x1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
x2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(x1,x2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set, type = 'class')
plot(set[, -3],
     main = 'Decision Tree Classification (Test Set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(x1), ylim = range(x2))
contour(x1, x2, matrix(as.numeric(y_grid), length(x1), length(x2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[,3] == 1, 'green4', 'red3'))

#plotting the tree
plot(classifier)
text(classifier)
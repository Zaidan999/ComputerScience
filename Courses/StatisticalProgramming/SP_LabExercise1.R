#install.packages("ggraph")
#install.packages("tidyr")
#install.packages("dplyr")
#installed.packages()
#install.packages("tidyquant")
#install.packages("shiny")
#install.packages("caret")
#install.packages("tidyverse")
#install.packages("e1071")
#install.packages("plotly")
#install.packages("knitr")
#install.packages("mlr3")
#install.packages("xgboost")
#install.packages("XML")
#library(ggplot2)
#library(dplyr)
data(mpg)
ggplot(mpg, aes(cty, hwy))+ geom_point() 
ggplot(diamonds, aes(carat, price)) + geom_point() 
ggplot(economics, aes(date, unemploy)) + geom_line() 
ggplot(mpg, aes(cty)) + geom_histogram() 

#calling library
library(ggplot2)
library(dplyr)

#inserting data
df <- data.frame(
  x<-c(12, 15, 13, 205, 7, 9.12, 7, 8, 15)) 

#creating histogram
p <- ggplot(df, aes(x)) + geom_histogram() 

#naming the chart
print(p + ggtitle("Data of Tutorial 1 Statistical Programming"))

#calling library
library(ggplot2)
library(dplyr)

#calling mtcars data
data("mtcars")

#creating bar plot
ggplot(data=mtcars,aes(x=cyl)) + geom_bar(stat="count") +
  #adding title
  ggtitle("The Number of Cyl from mtcars data")

#This is my first R
#Install Packages
install.packages("jsonlite", type="source")
install.packages("MASS")
summary("MASS")

#EXERCISE 1
#Point estimation of the population proportion
#1-define the data
Mydata <- c('Female', 'Female', 'Female', 'Female', 
            'Female', 'Female', 'Male', 'Male', 
            'Female', 'Male', 
            'Male', 'Male', 'Male', 'Male', 
            'Male', 'Male', 'Female', 'Male', 
            'Male', 'Male')

#2-find total sampe size
n <- length(Mydata)

#3-find the number of Male
a <- sum (Mydata == 'Male')

#4-find sample proportion
p <- a/n

#5-print the result
print(paste("Sample proportion of students who are Male is", p))

#EXERCISE 2
#define data
data <- c(8, 8, 9, 12, 13, 13, 14, 15, 19, 22, 23, 23, 24)

#calculate sample mean
mean(data, na.rm = TRUE)

#find sample size, sample mean, and sample standard deviation
n <- length(data)
xbar <- mean (data, na.rm = TRUE)
s <- sd (data)

#calculate margin of error
margin <- qt(0.975,df=n-1)*s/sqrt(n)

#calcualte lower and upper bounds of confidence interval
low <- xbar-margin
low
#Result: 12.035

high <-  xbar+margin
high
#Result:  19.195

#EXERCISE 3
#define data
data <-  c('Y', 'Y', 'Y', 'N', 'N',
           'Y', 'Y', 'Y', 'N', 'Y',
           'N', 'Y', 'Y', 'N', 'N',
           'Y', 'Y', 'Y', 'N', 'N')

#find total sample size
n<-length(data)

#find number who responded 'Yes'
k<-sum(data=='Y')

#find sample proportion
p<-k/n
p

#calculate margin of error
margin <-  qnorm(0.975)*sqrt(p*(1-p)/n)

#calculate lower and upper bounds of confidence interval
low <- p-margin
low
#Result: 0.385

high<-p+margin
high
#Result: 0.815
print('Input data of students specializations')
data<-c('DataScience', 'CyberSecurity', 'DataScience', 'DataScience', 'DataScience', 
        'CyberSecurity', 'DataScience', 'CyberSecurity', 'CyberSecurity', 'CyberSecurity', 
        'CyberSecurity', 'DataScience', 'DataScience', 'DataScience', 'DataScience', 
        'CyberSecurity', 'DataScience', 'DataScience', 'DataScience', 'CyberSecurity', 
        'DataScience', 'DataScience', 'DataScience', 'DataScience', 'DataScience')
#Q2-find total sample size
tot<-length(data)
cat('The total sample size is ', tot)

#Q3a-find the number of CyberSecurity
Cs<-sum(data=='CyberSecurity')
cat('The number of Cyber Security students is ', Cs)

#Q3b-find the number of DataScience
Ds<-sum(data=='DataScience')
cat('The number of Data Science students is ', Ds)


#Q4-find sample proportion
SpCs<-Cs/tot
SpDs<-Ds/tot

#Q5a-print the result-sample proportion of CyberSecurity
cat('The sample proportion of Cyber Security is ', SpCs)

#Q5b-print the result-sample proportion of DataScience
cat('The sample proportion of Data Science is ', SpDs)

#Q6-describe the data
print(summary(data))

#Q7-Calculate the Mean
#Input data for Q7
print('Input new data for Q7')
Mydata <- c(10.96,11.23,11.24,11.81,11.81,12.78,12.75,16.52,12.94,14.38,11.87,12.03,
            11.39,12.44,12.19,12.54,12.03,12.09,11.98,12.49,10.83,11.3,11.05, 12.22,11.5,
            12.59,12,12.08,12.02,12.39)

mean(Mydata, na.rm=TRUE)

#Q7-find sample size, sample mean, and sample standard deviation
#sample size
s<-length(Mydata)
cat('The sample sample size is ', s)
#sample mean
cat('The sample mean is ', mean(Mydata, na.rm=TRUE))
#standard deviation
cat('The standard deviation is ', sd(Mydata))

#Q8-Calculate the margin of error of the data
margin<-qnorm(0.975)*sqrt(SpCs*(1-SpCs)/tot)
cat('The margin of error of the students specialization data is ', margin)

#Q9-calculate lower and upper bounds of confidence interval
low<-SpCs-margin
low
high<-SpCs+margin
high
cat('The confidence interval is between ', low, ' and ', high)

#Q10-what is the class of the data
cat('The class of the Students Specialization data is', class(data))
cat('The class of the Students Specialization data is', class(Mydata))
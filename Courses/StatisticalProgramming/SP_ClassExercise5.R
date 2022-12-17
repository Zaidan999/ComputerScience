#data visualization

#pie chart
x <- c(21,62,10,53)
lbl <- c('Malaysia','Myanmar','Singapore','Indonesia')
pie(x,lbl, main='Asean Countries Chart', color=rainbow(length(x)))
png(file='Asean.png')

#printing 3D chart
install.packages("plotrix")
library(plotrix)
pie3D(x,labels=lbl, explode=0.1, main="Pie Chart of Asean Countries")

#printing bar chart
a <- c(8,14,25,22,30,35)
b <- c("Mar","Apr","May","June","July","Aug")
barplot(a,names.arg=b, xlab="Monthly", ylab="Revenue",
        col="red", main="Revenue Chart", border="blue")

#printing  bar plot
colors <- c("red","orange","yellow")
months <- c("Mar","Apr","May","Jun","Jul")
values <- matrix(c(5,6,8,10,13,15,19,20,24,25,28,30,31),nrow=3,ncol=5,byrow=TRUE)
barplot(values,main="Total Revenue",
        names.arg=months, xlab="months", ylab="revenue", col=colors)

#printing histogram
v <- c(11,14,17,19,20,25,27,28,31,37,39,43,46)
png(file="testhistogram.png")
hist(v,xlab="weight", col="orange", border="yellow", main="test histogram")
dev.off

hist(AirPassengers, main="Histogram of Air Passenger",
     xlab="Passengers", border="yellow", col="orange",
     xlim=c(100,600), las=1, braks=5)
hist(v,xlab="weight", col="orange", border="yellow",
     xlim=c(0,40), ylim=c(0,20), breaks=5)

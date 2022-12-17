#install.packages("scatterplot3d")

attach(trees)
plot(Girth, Height, main="Scatterplot of Girth vs Height",
     xlab="Tree Girth",
     ylab="Tree Height")
abline(lm(Height~Girth),col="blue", lwd=2)

plot(Girth, Volume, main="Scatterplot of Girth vs Volume",,
     xlab="Tree Girth",
     ylab="Tree Volume")
abline(lm(Volume~Girth),  col="blue", lwd=2)

pairs(trees, main="Scatterplot matrix for trees dataset")

#1-creating 3d scatterplot
library(scatterplot3d)
attach(trees)
scatterplot3d(Girth, Height, Volume, main="3D Scatterplot of trees dataset")

#2-dropping lines
scatterplot3d(Girth, Height, Volume, pch=20,
              highlight.3d = TRUE, type="h",
              main="3D Scatterplot of trees dataset")

#3-boxplot
boxplot(trees, col=c("yellow","orange","red"),
        main="Boxplot for trees dataset")

#4-linechart
plot(Girth, type="l", col="purple", ylab="", ylim=c(0,110),
     main="Comparison amongst Girth, Height, and Volume of trees")
lines(Height, type="l",  col="blue")
lines(Volume, type="l", col="cyan")
legend(1,110,legend=c("Girth", "Height","Volume"),
       col=c("purple", "blue", "cyan"),  lty=1:1, cex=0.9)

#5-dot plot
mtcars
attach(mtcars)
dotchart(disp, labels=row.names(mtcars),cex=0.75,
         main="Displacement for various models",
         xlab="Displacement in Cubic Inches")

#5(a)-sorting the displacement according to gear
sortingAccToGear<-mtcars[order(mtcars$disp),]
sortingAccToGear$gear<-factor(sortingAccToGear$gear)
sortingAccToGear$color[sortingAccToGear$gear==3]<-"darkblue"
sortingAccToGear$color[sortingAccToGear$gear==4]<-"cyan"
sortingAccToGear$color[sortingAccToGear$gear==5]<-"blue"
dotchart((sortingAccToGear$disp),
         labels=row.names(sortingAccToGear),
         groups=sortingAccToGear$gear,
         color=sortingAccToGear$color, cex=0.75,
         pch=20, main="Displacement for Car Models",
         xlab="Displacement in Cubic Inches")

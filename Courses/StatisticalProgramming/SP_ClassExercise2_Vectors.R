#CREATING VECTORS

#c function to combine the values as vector
#by default the type will be double
X<-c(61,4,21,67,89,2)
cat('using c function', X, '\n')
typeof(X)

#seq() function to create a sequence of continuous value
#length.out defines the length of vector
Y<-seq(1,10,length.out=5)
cat('using seq() function',Y,'\n')
typeof(Y)

#another example of seq()
seq(1,10)
seq(0,1, length=3)

#':' colon to create a continuous values
Z<-2:7
cat('using colon',Z)
typeof(Z)


#ACCESSING ELEMENTS  OF A VECTOR

#index number
a<-c(1,5,18,10,12)
cat('using Subscript operator',a[2],'\n')
#range of value
cat('using combine() function',a[c(1,12)],'\n')
#logical expressions
cat('using logical indexing',a[a>5])


#MODIFYING THE VECTOR (ELEMENTS)

#creating vector
b<-c(1,2,3,4,5,6)
b
#modifying a specific element
b[2]<-7
b[3]<-8
cat('subscript operator', b, '\n')
#modifying using different logics
b[b>6]<-0
cat('logical indexing',b,'\n')
#modifying the position
b<-b[c(3,2,1)]
cat('combine() function',b)


#SORTING ELEMENTS OF VECTOR

#creating vector
c<-c(5,6,7,8,1,2,3,4)

#ascending order
cA<-sort(c)
cat('ascending order',cA,'\n')
#descending order
cB<-sort(c, decreasing = TRUE)
cat('descending order',cB)

#CREATING A LIST
empId = c(1,2,3,4)
empName=c("zay","jon","bam","jar")
numOfEmp=4
empList=list(
  "ID"=empId,
  "Names"=empName,
  "TotalEmps"=numOfEmp
)
cat("Before concatenation of the new list\n")
print(empList)
#create another list
empAge=c(23,25,27,22)
empAgeList=list(
  "Age"=empAge
)
#concatenation of list
empList=c(empList,empAgeList)
cat("After concatenation of the new list\n")
print(empList)

#MERGING LIST
#creating lists
list1<-list(1,2,3)
list2<-list("sun","moon","mars")

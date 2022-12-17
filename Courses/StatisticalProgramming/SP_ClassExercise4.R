#create two lists
lst1 <- list(1,2,3)
lst2 <- list("Sun","Mon","Tue")

#Merge the two lists
new_list <- c(lst1,lst2)

#print the merged list
print(new_list)

#create lists
lst <- list(1:5)
print(lst)

#convert the lists to vectors
vec <- unlist(lst)
print(vec)

rv1 <- 1:5
rv2 <- 6:10
rv3 <- 11:15
rv4 <- 16:20

data <- list(rv1,rv2,rv3,rv4)
mtrx <- matrix(unlist(data), ncol=4, nrow=5)
mtrx

#Defining list
lst1 <- list(list(1,2,3), list(4,5,6))

#print list
cat ("The list is:\n")
print(lst1)
cat("Class",class(lst1),"\n")

#convert list to matrix 
mat <- matrix(unlist(lst1),nrow=2,byrow=TRUE)

#print matrix
cat("\nAfter conversion to matrix:\n")
print(mat)
cat("Class",class(mat),"\n")

vector1 <- c(2,18,30)
vector2 <- c(10,14,17,13,11,15,22,11,33)
print(array(c(vector1,vector2),dim=c(3,4,1)))
result <- array(c(vector1,vector2),dim=c(3,4,1))
length(result)

vector1 <- c(2,18,30)
vector2 <- c(10,14,17,13,11,15,22,11,33)
column.names <- c("COL1","COL2","COL3","COL4")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")
result <- array(c(vector1,vector2),dim=c(3,4,2),
        dimnames=list(row.names,column.names,
                      matrix.names))
result[,,1]
result[,,2]
#addition
print(result[,,1]+result[,,2])
#subtraction
print(result[,,1]-result[,,2])
#sum result 1
apply(result[,,1],1,sum)
#sum result 2
apply(result[,,2],2,sum)
#check for array
is.array(result)
#check size of array
print(result)
dim(result)
nrow(result)
ncol(result)
#check names of rows and columns
rownames(result)
colnames(result)
dimnames(result)

m <- matrix(c(1,2,3,4,5,6),nrow=3,byrow=TRUE)
m
m[1,2]
m[1,]
m
dim(m)
a <- matrix(c(1,2,3,4),nrow=2)
b <- matrix(c(1,2,3,4),nrow=2)
a%*%b
m <- matrix(c(1,2,3,4), nrow=2)
v <- c(5,6)
m %*% v
t(m)
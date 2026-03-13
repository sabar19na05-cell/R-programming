marks <- c(45,55,65,60,62,70,72,75,80,85,90)
hist(marks,
     main="Count wise mark report",
     xlab="Marks",
     ylab="count",
     col="pink",
     border="black",
     breaks=9,
     freq=FALSE
     
     )
lines(density(marks),col="blue",lwd=2)
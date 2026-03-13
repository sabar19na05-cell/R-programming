ads <- c(10,20,30,40,50)
sales <- c(200,350,500,20,700)

data <- data.frame(ads,sales)
model<- lm(sales ~ ads,data=data)
model
summary(model)
plot(ads,sales,
     pch=16,
     col="pink",
     main="Ads vs Sales",
     xlab="Ads in thousands",
     ylab="Phones sold"
     )
abline(model,col="blue",lwd=2)
predict(model,data.frame(ads=35))
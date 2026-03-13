NWT<- c(1,2,3,4,5,6,7)
SR <- c(1,2,3,4,5,6,7)

data <- data.frame(NWT,SR)
model<- lm(SR ~ NWT,data=data)
model
summary(model)
plot(NWT,SR,
     pch=17,
     col="red",
     main="Netfilxwatchtime vs Snacks eaten",
     xlab="watchtime",
     ylab="snacks"
)
abline(model,col="blue",lwd=2)
predict(model,data.frame(NWT=10))
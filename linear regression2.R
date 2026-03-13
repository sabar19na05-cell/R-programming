ads <- c(5,10,20,30,40,50)
sales <- c(120,220,380,520,610,650)

model <- lm(sales ~ poly(ads,2),data=data.frame(ads,sales))

summary(model)

plot(ads,sales,
     pch=16,
     col="red",
     main="Ads vs Sales",
     xlab="Ads",
     ylab="phone sold"
)
curve(predict(model,data.frame(ads=x)),
      add=TRUE,
      col="orange",
      lwd=2
)
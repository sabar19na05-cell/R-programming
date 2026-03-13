ads <- c(10,20,30,40,50)
sales <- c(200,350,500,620,700)
high_sales <- ifelse(sales > 500,1,0)
data <- data.frame(ads,sales,high_sales)
model_logis <-glm(high_sales ~ads,data=data,
                  family=binomial())
ifelse(predict(model_logis,
               data.frame(ads=35),
               type="response")>0.5,"YES","NO")
plot(ads,high_sales,
     pch=16,
     col="black",
     xlab="ads",
     ylab="high sales(0/1)",
     main="Logistic Regresasion Curve"
)
curve(predict(model_logis,data.frame(ads=x),type="response"),
      add=TRUE,
      col="red",
      lwd=2)

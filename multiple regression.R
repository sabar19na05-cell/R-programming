ads <- c(10,20,30,40,50)
dis <- c(2,4,6,8,10)
visits <- c(100,150,200,260,300)
sales <- c(200,350,500,20,700)

data <-data.frame(ads,sales,dis,visits)

data
model <-lm(sales ~ads+dis+visits,data=data)
summary(model)
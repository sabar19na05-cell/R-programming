weather <- data.frame(
  day = 1:15,
  temperature = c(28, 30, 32, 31, 29, 27, 26, 28, 30, 33, 34, 35, 36, 34, 32),
  humidity = c(65, 60, 58, 62, 70, 75, 80, 78, 72, 68, 66, 64, 63, 67, 69),
  rainfall = c(2, 0, 0, 1, 3, 6, 8, 7, 4, 1, 0, 0, 0, 1, 2)
)
humidity <- c(65, 60, 58, 62, 70, 75, 80, 78, 72, 68, 66, 64, 63, 67, 69),
rainfall <-c(2, 0, 0, 1, 3, 6, 8, 7, 4, 1, 0, 0, 0, 1, 2)

x<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
y1 <-c(65, 60, 58, 62, 70, 75, 80, 78, 72, 68, 66, 64, 63, 67, 69)
y2 <- c(2, 0, 0, 1, 3, 6, 8, 7, 4, 1, 0, 0, 0, 1, 2)


plot(x,y1,
     main="Weather prediction ",
     xlab="Days",
     ylab="Tempearture",
     type="b",
     col= "blue",
     
     pch= 15,
     lwd=2,
     lty=2,
     xlim=c(0,15),
     ylim=c(0,90)
)
grid()
lines(x,y2,
      col="red",
      type = "b",
      pch=17,
      lwd=1
)


legend(
  "topleft",
  legend=c("humidity","rainfall"),
  col=c("blue","red"),
  pch=17,
  lty=1
)

day <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
temperature <- c(28, 30, 32, 31, 29, 27, 26, 28, 30, 33, 34, 35, 36, 34, 32)
humidity <- c(65, 60, 58, 62, 70, 75, 80, 78, 72, 68, 66, 64, 63, 67, 69)
rainfall <-c(2, 0, 0, 1, 3, 6, 8, 7, 4, 1, 0, 0, 0, 1, 2)

data <-data.frame(day,rainfall,temperature,humidity)

data
model<-lm(rainfall ~day+temperature+humidity,data=data)
summary(model)

day<-c("day1","day2","day3")

collection<-data.frame(
  temperature <- c(28, 30, 32, 31, 29, 27, 26, 28, 30, 33, 34, 35, 36, 34, 32)
  humidity <- c(65, 60, 58, 62, 70, 75, 80, 78, 72, 68, 66, 64, 63, 67, 69)
  rainfall <-c(2, 0, 0, 1, 3, 6, 8, 7, 4, 1, 0, 0, 0, 1, 2)
  
)

rownames(collection)<-day

collection_t<-t(as.matrix(collection))

barplot(
  collection_t,
  beside=TRUE,
  col=c("blue","orange"),
  main="Ticket Sales Weekly Report",
  xlab="Week",
  ylab="No of ticket sold",
  ylim=c(0,1000)
)
legend("topleft",
       legend=colnames(collection),
       fill=c("blue","orange","red","black"),
       bty="b"
)

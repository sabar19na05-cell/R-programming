series<-c("stranger thinga","aib","wednessday","dark")
mins<-c(9838,7393,8233,6321)
bp<-barplot(mins,
            name.arg=series,
            main="Web Streaming Data",
            xlab="Series",
            ylab="Streaming in mins",
            col=c("yellow","green","orange","red"),
            width=2,
            space=0.5,
            ylim=c(0,10000)
)
text(
  x= bp,
  y= mins,
  labels= mins,
  pos=3
)

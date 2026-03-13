week<-c("Week1","Week2","Week3")

collection<-data.frame(
  Avatar=c(900,800,700),
  Dude=c(600,700,900),
  Goat=c(700,400,700),
  GuB=c(800,700,900)
)

rownames(collection)<-week

collection_t<-t(as.matrix(collection))

barplot(
  collection_t,
  beside=TRUE,
  col=c("blue","orange","red","black"),
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

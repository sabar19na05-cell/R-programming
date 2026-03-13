phones<-c("viv0","oppo","samsung","apple")
sales<-c(120,150,90,200)
bp<-barplot(sales,
        name.arg=phones,
        main="Weekly phones Sales report",
        xlab="phone Brands",
        ylab="No of units sold",
       )
col=c("blue","green","orange","pink"),
        width=2,
        space=0.5,
       ylim=c(0,250)
 text(
  x= bp,
  y= sales,
  labels= sales,
  pos=3
)
           
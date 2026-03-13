Agan <- c(98,99,95,94,80)
kural <- c(85,97,93,100,79)
paari <- c(55,43,25,79,60)
hist(Agan,
     col=rgb(1,0,0,0.5),
     xlim=c(20,100),
     main ="Dude Marks History",
     xlab="Marks"
)
hist(kural,
     col=rgb(0,1,0,0.5),
     xlim=c(20,100)
    
)
hist(paari,
     col=rgb(0,1,0,0.5),
     xlim=c(20,100)
)
legend("topleft",
       legend=c("Agan","kural","paari"),
       fill=c(rgb(1,0,0,0.5),
       rgb(0,1,0,0.5),
       rgb(0,0,1,0.5)))


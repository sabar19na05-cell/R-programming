Avatar<- c(50,30,15,5)
ra<- c("5 stars","4 stars","3 stars","2 stars")
percent <- round(Avatar/ sum(Avatar)*100)
labels <-paste(ra,percent,"%")
pie(Avatar,
    labels=labels,
    main=" Avatar Movie Rating Analysis",
    radius=1,
    clockwise=TRUE,
    init.angle=70,
    col=c("gold","lightgreen","orange","red"))


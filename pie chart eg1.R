population <- c(40,25,20,15)
country <- c("china","india","russia","italy")
percent <- round(population/ sum(population)*100)
labels <-paste(country,percent,"%")
pie(population,
    labels=labels,
    main="Country wise population",
    radius=1,
    clockwise=TRUE,
    init.angle=70,
    col=c("red","blue","yellow","pink"))


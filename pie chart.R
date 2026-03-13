food_data <- data.frame(
  name=c("biriyani","Shawarma","dosa","chappathi"),
  likes=c(40,20,90,100)
)
pie(
  food_data$likes,
  labels =food_data$name,
  col=rainbow(4)
)
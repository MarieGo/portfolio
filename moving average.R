moving_average <- function(momentum = 20) {
  data <- readdata()
  subset <- select(data, c(Date, Open))
  temp <- na.omit(subset)
  temp <- arrange(temp, Date)
  
  print(class(temp))
  print(class(mean))
  
  
  temp <- mutate(temp, mean = rollmean(temp[,2], momentum, na.pad=T, align = "right"))
}

x <- moving_average()


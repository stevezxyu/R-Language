library(ggplot2)
data()

ggplot(car, aes(x= speed, y = dist)) + geom_point()

plot(x= cars$speed, y = cars$dist))
plot(x= cars$speed, y = 1:50)

one_to_fifty  <- 1:60
ggplot(cars, aes(x= speed, y = dist)) + geom_point() +
ggtitle("Cars Data Viz") +
  xlab("SPEED") +
  ylab("DIST") +
  theme(plot.title = element_text(hjust = 0.5))
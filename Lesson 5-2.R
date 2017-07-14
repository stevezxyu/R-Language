#在一個畫布上畫多個圖形, 使用 gridExtra 套件來幫忙
install.packages("gridExtra")
library(gridExtra)

gg1 <- ggplot(cars, aes(x = speed, y = dist)) + geom_point()
gg2 <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width, colour = Species)) + geom_point()
grid.arrange(gg1, gg2, nrow = 2)


gg1 <- ggplot(mpg, aes(x= class))
gg1 <- gg1 +geom_bar(aes(fill = drv), position = "fill")
gg1 <- gg1 + ylab("Prosition")
gg1 <- gg1 + coord_flip()

gg2 <- ggplot(mpg, aes(x= class)) +
  geom_bar(aes(fill = drv), position = "dodge")

grid.arrange(gg1, gg2, nrow = 1)  #在一個畫布上畫多個圖形


#ggplotly() 加入互動性
install.packages("plotly")
library(plotly)
static_gg <- ggplot(mpg, aes(x = class)) +
  geom_bar(aes(fill = drv))
ggplotly(static_gg)


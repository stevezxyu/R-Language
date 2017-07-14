#用一個 2x2 的畫布練習使用 Base plotting system 繪製任意四個圖形

#線圖
par(mfrow = c(2,2))
plot(cars$speed, cars$dist, type = "l", main = "Car speed vs. braking distance", xlab = "Speed", ylab = "Dist")

#直方圖
n <- 1000
par(mfrow = c(2,2))
hist(runif(n), main = paste("Distribution of", n, "uniformly distributed variables"))

#盒鬚圖
par(mfrow = c(2, 2))
str(iris)
boxplot(iris$Sepal.Length ~ iris$Species, main = "Sepal length by species")

#長條圖
par(mfrow = c(2, 2))
mtcars_ordered_by_hp <- mtcars[order(mtcars$hp),]
bar_lab <- row.names(mtcars_ordered_by_hp)
bar_height <- mtcars_ordered_by_hp$hp
barplot(bar_height, names = bar_lab, las = 2, cex.names = 0.5 , horiz = TRUE)

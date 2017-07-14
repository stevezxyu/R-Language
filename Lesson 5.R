ggplot(cars, aes(x = speed, y = dist)) +
  geom_point() +
  ggtitle("Car speed vs. braking distance") +
  xlab("Speed") + 
  ylab("Dist")
  geom_smooth(method = "lm")  #加註趨勢線

#散佈圖
str(iris)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +  #以Species分類加註顏色
  geom_point() +
  ggtitle("Sepal.Length vs. Sepal.Width") +
  xlab("Sepal length") +
  ylab("Sepal width")

#不知道Data的結構之前先用dim查看變數的數量
dim(diamonds)
str(diamonds)

#練習1 畫出 carat 與 price 的散佈圖
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point()
ggplot(diamonds, aes(x = carat, y = price, color = cut)) +  #以cut分類加註顏色
  geom_point()

#線圖
dim(economics)
str(economics)
ggplot(economics, aes(x = date, y = unemploy)) +
  geom_line() #線圖

#練習2 畫出 pop 的線圖
ggplot(economics, aes(x = date, y = pop)) +
  geom_line()


max(economics$date)
min(economics$date)

#summary不只對數值,也可對向量做
summary(economics$date)
summary(economics)

#直方圖
df <- data.frame(x_var = rnorm(1000))
ggplot(df, aes(x= x_var)) +
  geom_histogram(binwidth = 0.5)

ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram() +
  facet_wrap(~ Species, ncol = 1)  # 加入 ncol = 1 垂直展開

#練習3 畫出 carat 的直方圖
summary(diamonds$carat)  #<-必須先知道最大值和最小值的區間,才能決定binwidth多少
ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 0.01)

#盒鬚圖
ggplot(iris, aes(x = Species, y = Sepal.Length)) +
  geom_boxplot() +  #盒鬚圖
  coord_flip()   #重直轉成水平

#練習4 畫出不同 cut 的 price 的盒鬚圖
ggplot(diamonds, aes(x = cut, y = price)) +
  geom_boxplot()

#函數圖
sin_df <- data.frame(x = c(-pi, pi))
View(sin_df)

ggplot(sin_df, aes(x = x)) +
  stat_function(geom = "line", fun = sin)

#自訂函數圖
sigmoid_func <- function(x){
  return(1 / (1 + exp(-x)))
}

sigmoid_df <- data.frame(x = c(-10, 10))
sigmoid_df

ggplot(sigmoid_df, aes(x = x)) +
  stat_function(fun = sigmoid_func, geom = "line") +
  geom_hline(yintercept = 0.5, lty = 2) +
  geom_vline(xintercept = 0, lty = 2)


#不會做group,需要手動group
barplot(mtcars$gear)
#ggplot會做自動group的動作
ggplot(mtcars, aes(x= gear)) +
  geom_bar()

ggplot(mtcars, aes(x= row.names(mtcars), y = hp)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  xlab("Vehicles")


#納入類別變數的顏色
str(mpg)
dim(mpg)
#aes(fill = drv)區分類別的顏色, "dodge"參數為分開長條顯示
ggplot(mpg, aes(x = class)) +
  geom_bar(aes(fill = drv), position = "dodge")


#練習5 練習使用 ggplot2 套件附的 diamonds 資料, 看不同 cut 類型的數量
ggplot(diamonds, aes(x = cut, fill = cut)) +
  geom_bar()

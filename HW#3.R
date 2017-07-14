#用一個 2x2 的畫布練習使用 ggplot2 繪製任意四個圖形
install.packages("ggplot2")
library(ggplot2)

#散佈圖
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +   #color用Species劃分 
  geom_point() + ggtitle("Sepal.Length vs. Sepal.Width") +
  xlab("Sepal length") +  ylab("Sepal width") + 
  geom_smooth(method = "lm")            # geom_smooth(method = "lm")加上 fit line

#直方圖
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(binwidth = 0.5) +    # binwidth決定每條bar的寬度
  facet_wrap(~ Species)               # 納入類別變數的展開, 加入 ncol = 1 垂直展開

#函數圖
sigmoid_func <- function(x){          # 自訂函數回傳到sigmoid_func
  return(1 / (1 + exp(-x)))           # return公式
}

sigmoid_df <- data.frame(x = c(-10, 10))   # 建立一個data frame
sigmoid_df

ggplot(sigmoid_df, aes(x = x)) +
  stat_function(fun = sigmoid_func, geom = "line") +
  geom_hline(yintercept = 0.5, lty = 2) +      # lty線的類型為2
  geom_vline(xintercept = 0, lty = 2)

#長條圖
ggplot(mpg, aes(x = class)) +
  geom_bar(aes(fill = drv),      # aes(fill = drv)納入類別變數的顏色
  position = "dodge") +          # position = "dodge" 參數, bar會並排顯示
  coord_flip() +                 # coord_flip() 將垂直bar轉換成水平顯示 
  ylab("Percentage")
#apply 函數家族
#根基於 C 語言函數
#效率高於迴圈

#apply函數: 輸入：matrix，dataframe 或 list
apply(cars, FUN = sum, MARGIN = 2)

res <- c()
for (i in 1:ncol(cars)) {
  res[i] <- sum(cars[,1])
}

apply(cars, FUN = mean)
summary(cars)

#result <- rep(NA, times = 2)
#for (i in 1:length(cars)) {
#  result[i] <- mean(cars[, i])
#}
#result

#lapply函數: l as in list，輸出 list 的意思
lapply(cars, FUN = mean)

#sapply函數: s as in simple，輸出向量的意思
sapply(cars, FUN = mean)


#練習1
library(ggplot2)
library(plotly)
library(tidyr)

packages_needed <- c("ggplot2", "plotly", "tidyr")
sapply(packages_needed, FUN = library, character.only = TRUE)

#tapply函數
#輸入：vector
tapply(iris$Sepal.Length, INDEX = iris$Species, FUN = mean)


# 建立 data frame
col1 <- runif (12^4, min = 0, max = 2)
col2 <- rnorm (12^4, mean = 0, sd = 2)
col3 <- rpois (12^4, lambda = 3)
col4 <- rchisq (12^4, df = 2)
df <- data.frame (col1, col2, col3, col4)

# 使用 apply() 計算每列的總和
system.time(apply(df, FUN = sum, MARGIN = 1))

# 使用 for-loop 計算每列的總和
result <- c()
system.time(
  for (i in 1:nrow(df)) {
    result[i] <- sum(df[i, ])
  }
)

load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))

#for迴圈
#迭代子 = i
for (i in month.name) {
  print(i)  
}

for (var in names(straw_hat_df)) {
  print(var)
}

#print出name長度的變數
for (i in 1:length(names(straw_hat_df))) {
  print(names(straw_hat_df)[i])
}
View(straw_hat_df)

#用for迴圈練習
par(mfrow = c(2, 2))
boxplot(iris$Sepal.Length ~ iris$Species, main = "Sepal length by species")
boxplot(iris$Sepal.Width ~ iris$Species, main = "Sepal width by species")
boxplot(iris$Petal.Length ~ iris$Species, main = "Petal length by species")
boxplot(iris$Petal.Width ~ iris$Species, main = "Petal width by species")

#Step1 刪除不同的部分, 僅留下相同的部分
par(mfrow = c(2, 2))
boxplot(iris$ ~ iris$Species, main = "by species")

#step2 變動的部分加上迭代子, 帶出names(iris)
par(mfrow = c(2, 2))
iris_vars <- names(iris)[1:4]
for () {
  boxplot(iris$i ~ iris$Species, main = "i by species")
}

#step3 i帶進for迴圈, $改為[]索引值避免文字的字元造成錯誤, paste將兩個字串連起來
par(mfrow = c(2, 2))
iris_vars <- names(iris)[1:4]  #iris第1~4欄位的name assign進 iris_vars
for (i in iris_vars) {
  boxplot(iris[, i] ~ iris$Species, main = paste(i, "by species"))
}

#step4 讓i代表索引值
par(mfrow = c(2, 2))
iris_vars <- names(iris)[1:4]
for (i in 1:length(iris_vars)) {
  boxplot(iris[, i] ~ iris$Species, main = paste(iris_vars[i], "by species"))
}


# 整合課堂教的 my.sum() 與 my.length 把 mean() 函數實作出來
# 平均數 = 總和 / 個數


# declaring function: my_sum
my_sum <- function(x) {
  summation <- 0
  for(i in x) {
    summation = summation + i
  }
  return(summation)
}


# declaring function: my_length
my_length <- function(x) {
  cnt <- 0
  for(i in x) {
    cnt <- cnt + 1
  }
  return(cnt)
}


# 實作mean() 函數：my_mean
my_mean <- function(x) {
  mean = my_sum(x) / my_length(x)
  return(mean)                       # return回傳到mean函數
}


# Call function
test <- 1:10
my_sum(test)
my_length(test)
my_mean(test)

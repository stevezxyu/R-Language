#巢狀迴圈（nested loop）是指迴圈包含另一個迴圈
my_mat <- matrix(nrow = 2, ncol = 3)
my_vec <- 7:12
#for迴圈先執行再檢查(已知會執行幾次)
#裡面迴圈先跑, 在跑外圍的迴圈
for (j in 1:3) {
  for(i in 1:2) {
    my_mat[i, j] <- my_vec[1]
    my_vec <- my_vec[-1]  # 每跑完一次迴圈要丟掉第一個元素
  }
    
}

#
for (j in 1:ncol(my_mat)) {
  for(i in 1:nrow(my_mat)) {
    my_mat[i, j] <- my_vec[1]
    my_vec <- my_vec[-1]
  }
  
}

my_mat

#改成長矩陣
my_mat2 <- matrix(nrow = 4, ncol= 3)
my_vec2 <- 7:18
for (j in 1:ncol(my_mat2)) {
  for(i in 1:nrow(my_mat2)) {
    my_mat2[i,j] <- my_vec2[1]
    my_vec2 <- my_vec2[-1]
  }
}

my_mat2


#製作9*9乘法表
multiply_mat <- matrix(nrow = 9, ncol = 9)
for (i in 1:9) {
  for(j in 1:9) {
    multiply_mat[i, j] <- i * j   # 直接輸入運算式i * j, 不需用矩陣乘法  
  }
}

for (i in 1:9) {
  for(j in 1:9) {
    multiply_mat[i, j] <- paste(i, "x", j, "=", i = j )   # 用paste 顯示文字  
  }
}

multiply_mat


#while 迴圈會先檢查條件才執行程式碼(未知會執行幾次)
i <- 1
while (i <= length(month.name)) {
  print(month.name[i])
  i <- i + 1
}

print(i)
i <= 12    #FALSE會停止執行
12 <= 12   #TRUE會繼續執行


#流程控制: 多個分支if-else 的語法
weather <- sample(c("晴天", "雨天", "多雲"), size = 1)
weather
if (weather == "晴天") {
  print(paste("天氣是", weather, "去戶外跑步", sep = ""))    #sep""刪除paste裡面的空白處
} else if(weather == "多雲") {
  print(paste("天氣是", weather, "去戶外騎腳踏車", sep = ""))
} else {
  print(paste("天氣是", weather, "去健身房運動", sep = ""))
}

#迴圈加入break (停止)或 next (跳過) 
for (i in month.name) {
  if (i == "September") {
  next
}
  print(i)
}


#for 與 while 的使用時機
#所有的 for 都可以用 while 改寫
#但是反過來並非如此
#不知道迭代次數的時候用 while


#投擲一個公正的銅板，必須出現三次正面才可以停止,請問總共要投幾次？
coin <- c("Head", "Tail")
flip_res <- c()  #先用空的向量存起來
i <- 1　

while (sum(flip_res == "Head") < 3) {     #sum計算總次數 < 3
  flip_res[i] <- sample(coin, size = 1)
  i <- i+ 1    #每次投擲後再投一次
}
flip_res
length(flip_res)




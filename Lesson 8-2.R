#將1到100印出, 但是:
#碰到 3 的倍數輸出 “三的倍數”
#碰到 5 的倍數輸出 “五的倍數”
#碰到 3 與 5 的公倍數時輸出 “十五的倍數”


for(i in 1:100) {
  if (i %% 15 == 0) {          #15的倍數要先寫在上層, 滿足條件式之後就不會往下執行
    print("十五的倍數")
  } else if (i %% 3 == 0) {
    print("三的倍數")
  } else if (i %% 5 == 0) {
    print("五的倍數")
  } else { 
    print(i)
  }
}


#迭代觀念
#向量計算 > apply() 函數家族 > for while 迴圈

#向量計算
heights <- runif(500000) * 50 + 140
weights <- runif(500000) * 50 + 40
h_w_df <- data.frame(heights, weights)
#system.time() 函數可以觀察程式執行時間
system.time(
  h_w_df$bmi <- h_w_df$weights / (h_w_df$heights / 100)^2
)

# apply() 函數家族的 mapply() 函數
bmi_calculator <- function(height, weight){
  return(weight / (height / 100)^2)
}

system.time(
  h_w_df$bmi <- mapply(FUN = bmi_calculator, h_w_df$heights, h_w_df$weights)
)

#for 迴圈
bmi <- rep(NA, times = nrow(h_w_df))
system.time(
  for (i in 1:nrow(h_w_df)){
    bmi[i] <- bmi_calculator(h_w_df[i, "heights"], h_w_df[i, "weights"])
  }
)

h_w_df

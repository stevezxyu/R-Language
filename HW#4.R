# 我們把這個公正的銅板改成公正的骰子，必須出現三次六點才可以停止，請問總共要投幾次？
dice <- 1:6
sample(dice, size = 1)
flip_6 <- c()                              # 先放入空的二維vector存放
i <- 1                                     # dice點數從1開始
while (sum(flip_6)<3) {                    # 點數總數<3, 執行內部迴圈
  if (sample(dice, size = 1) == 6) {       # if投擲dice為6, assign為TRUE, 否為FALSE
    flip_6[i] <-  TRUE
  } else {
    flip_6[i] <-  FALSE
  }
  i = i + 1                                # 做完i次之後, 再做第i + 1 次
}

flip_6
length(flip_6)

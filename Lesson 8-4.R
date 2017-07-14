#自訂函數
exam <- function(start_int, end_int)
for(i in start_int:end_int) {
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
exam(101, 200)

#練習1
my_squared <- function(num) {
    ans <- num^2 + 3
    return(ans)
}
my_squared(6)


#circle.calculate() 函數
circle.calculate <- function(r, is_area) {
  if (is_area == TRUE) {
    return(pi * r^2)
  } else {
    return(2 * pi * r)
  }
}

radius <- 5
circle.calculate(radius, is_area = TRUE)   #算面積
circle.calculate(radius, is_area = FALSE)  #算周長
#circle.calculate(radius)     #需要給預設值,才能執行此行程式


#計算全部
circle.calculate <- function(r, is_area) {
  area <- pi * r^2
  circum <- 2 * pi * r
  res_list <- list(circle_area = area,  circle_circum = circum)
  return(res_list)
}

radius <- 5
my_circle_area <- circle.calculate(radius)$circle_area
my_circle_area


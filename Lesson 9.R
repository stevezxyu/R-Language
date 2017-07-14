# 把 length() 函數實作出來


# libraries


# declaring function: my_length
my_length <- function(x) {
  cnt <- 0
  for (i in x) {
    cnt <- cnt + 1
  }
  return(cnt)
}


# declaring function: my_sum
my_sum <- function(x) {
  summation <- 0
  for(i in x) {
    summation <- summation + i
  }
  return(summation)
}
  

# 練習實作 n! 階乘函數 my_factorial()
# declaring function: my_factorial
my_factorial <- function(n) {
  fact <- 1  
  for (i in 1:n) {
    fact <- fact * i      # fact * i, 才會回傳 n * n+1
  }
  return(fact)
}


# create inputs
test <-  6:10
  

# calling function
my_length(test)
my_sum(test)
my_factorial(5)


# sort() 函數, 練習交換數值
a <- 8
b <- 7
a <- b
a
b <- a
b

a <- 8
b <- 7
c <- a
a <- b
b <- c
a
b

# sort() 函數
acs_sort <- function(x) {
  input_length <- length(x)
  for (i in 1:(input_length - 1)) {
    for(j in (i + 1):input_length) {
      if (x[i] > x[j]) {
        tmp <- x[i]
        x[i] <- x[j]
        x[j] <- tmp
      }
    }
  }
  return(x)
}

# Create a function: my_sort, decreasing
my_sort <- function(x, decreasing = FALSE) {
  input_length <- length(x)
  if (decreasing == FALSE) {               #設定decreasing為FALSE,執行for迴圈
    for (i in 1:(input_length - 1)) {
      for(j in (i + 1):input_length) {
        if (x[i] > x[j]) {
          tmp <- x[i]
          x[i] <- x[j]
          x[j] <- tmp
        }
      }
  }
  return(x)
} else {
  for (i in 1:(input_length - 1)) {
    for(j in (i + 1):input_length) {
      if (x[i] > x[j]) {
        tmp <- x[i]
        x[i] <- x[j]
        x[j] <- tmp
      }
    }
  }
  return(x)
  }
}

# Create a test vector
test <- round(runif(10) * 100)
test

# call fuction
my_sort(test)
my_sort(test, decreasing = TRUE)


# 練習2
# Declare my.max()
my.max <- function(input_vector) {
  # Use sort() to sort input_vector with descending order and assign to sorted_vector
  sorted_vector <- sort(input_vector, decreasing = TRUE)
  # Return the first scalar of sorted_vector
  return(sorted_vector[1])
}

# Generate a vector
my_vector <- round(runif(10) * 100)

# Print my_vector out
my_vector

# Call my.max() on my_vector
my.max(my_vector)



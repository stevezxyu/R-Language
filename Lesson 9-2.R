# 練習sd() 函數實作出來：my_sd()
my_sd <- function(x) {
  N_minus_one <- length(x) - 1
  input_mean <- mean(x)
  sigma <- sum((x - input_mean)^2)
  return(sqrt(sigma / N_minus_one))
}

# test vector
test <- 11:20

# sd & my_sd
sd(test)
my_sd(test)



# poker_cards()
poker_cards <- function(n) {
  if(n > 52 | n < 1) {
    return("發牌的張數必須小於等於52")
  } else {
    nums <- c(2:10, "J", "Q", "K", "A")
    suits <- c("Spade", "Heart", "Diamond", "Club")
    cards <- sort(paste(rep(nums, times = 4), suits))
    n <- as.integer(n)
    return(sample(cards, size = n))
  }
}


poker_cards(-1)
poker_cards(53)
poker_cards(10)

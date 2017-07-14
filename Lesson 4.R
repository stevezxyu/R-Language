name <- c("蒙其D魯夫", "羅羅亞索隆", "娜美", "賓什莫克香吉士")
is_female <- c(FALSE, FALSE, TRUE, FALSE)
age <- c(19, 21, 20, 21)

#方法一
df <- data.frame(name, is_female, age, stringsAsFactors = FALSE)
str(df)

#方法二
df <- data.frame(name, is_female, age)
df$name  <- as.character(df$name)
str(df)

class(df$name)
class(df$name)
df[1,]
df[c(1,4),]
View(df[, c("name", "age")])
df[, "is_female"]
df[, "age"]
df[df$is_female == FALSE & df$age >= 20,]
df[df$is_female == FALSE & df$age >= 20, "name"]

my_mat <- matrix(1:9, nrow = 3)
my_mat
my_mat[my_mat > 7 | my_mat < 3]
df[df$is_female == FALSE & df$age >= 20]
df[df$is_female == FALSE & df$age >= 20, "name"]
df[df$is_female == FALSE & df$age >= 20, "name", drop = FALSE]

my_list <- list(df, my_mat)
class(my_list)
my_list
my_list[1]
my_list[[1]]
my_list[2]
larger_list[[1]]
larger_list[[1][2]]


genre_data <- "SitCom"
seasons_data  <- 10L
characters_data <- c("Ross Geller", "Chandler Bing", "Joey Tribianni", "Phoebe Buffay", "Monica Geller", "Rachel Green")
friends <- list( genre= genre_data, seasons = seasons_data, characters = characters_data )
friends[1]
friends[[1]]
friends[[3]]

genre_data <- "Ball"
seasons_data <- 5L
character_data <- c("adam", "Alice", "Max", "Amy")
players <- list( genre = genre_data, seasons = seasons_data, characters = characters_data )
players[[3]]


cars_lm_fit <- lm(dist ~ speed, data = cars)
class(cars_lm_fit)
mode(cars_lm_fit)
cars_lm_coefficients



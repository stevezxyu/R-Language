category <- "Pad"
Dresser  <- runif(100)
df <- data.frame(category, Dresser, stringsAsFactor = FALSE)
#ifelse(df$Dresser >= 0.32, "Dresser", df$category)
df$category_new <- ifelse(df$Dresser >= 0.32, "Dresser", df$category)

View(df)

load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))

?ifelse
ifelse(straw_hat_df$age >= 30, "年紀大", "年紀小")
ifelse(straw_hat_df$age >= 30, "年紀大", 
       ifelse(straw_hat_df$age < 20, "年紀小", "年紀輕"))

?cut
cut(straw_hat_df$age, breaks = c(0, 19,30, 100))
cut(straw_hat_df$age, breaks = c(0, 19,30, 100),
    labels = c("年紀小", "年紀輕",  "年紀大"))


#rbind可加上觀測值,需要注意是否為Vector
jinbe <- c("Jinbe", "Male", "Shichibukai",
           400000000, 46, "04-02", 301)
straw_hat_df <- rbind(straw_hat_df, jinbe)
View(straw_hat_df)

straw_hat_df[1:5, ]
straw_hat_df[straw_hatdf$height >= 180, ]

#subset一次對欄位與觀測值進行篩選
subset(straw_hat_df, height < 180 & gender == "Male",
       select = "name")

load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
birth_year <- as.integer(format(Sys.Date(), "%Y")) - as.integer(straw_hat_df$age)
straw_hat_df$birth_date <- as.Date(paste(birth_year, straw_hat_df$birthday), format = "%Y %m-%d")

View(straw_hat_df)
max(straw_hat_df$birth_date)
min(straw_hat_df$birth_date)

#tidyr 寬表格轉換成長表格
wide_df <- straw_hat_df[, c("name", "age", "height")]
View(wide_df)

load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
install.packages("DBI")
install.packages("tidyr")
library(tidyr)
?gather
long_df <- gather(wide_df, key = val_category,
                  value = val, age, height)
View(long_df)
?spread
wide_df_new <- spread(long_df, key = val_category,
                      value = val)
View(wide_df_new)

#用ggplot2顯示圖
library(ggplot2)
ggplot(wide_df_new, aes(x= name, y= age)) +
  geom_bar(stat = "identity")

ggplot(long_df, aes(x= name, y = val)) +
  geom_bar(stat = "identity", position = "dodge")

#merge函數
load(url("https://storage.googleapis.com/r_rookies/straw_hat_devil_fruit.RData"))
merged_df <- merge(straw_hat_df, straw_hat_devil_fruit)
View(merged_df)

#回傳到name欄
merged_df <- merge(straw_hat_df, straw_hat_devil_fruit,
                   all.x = TRUE)
View(merged_df)

#回傳到devil_fruit欄
merged_df <- merge(straw_hat_df, straw_hat_devil_fruit,
                   all.y = TRUE)
View(merged_df)

names(straw_hat_devil_fruit)[1] <- "role"
#兩個欄位互傳
merged_df <- merge(straw_hat_df, straw_hat_devil_fruit,
                   by.x = "name", by.y = "role")
View(merged_df)
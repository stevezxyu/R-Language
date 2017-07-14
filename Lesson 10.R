# 使用 dplyr 套件整理資料
install.packages("dplyr")
library(dplyr)

load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
filter(straw_hat_df, name == "Usopp" | name == "Nami")

TRUE | TRUE
TRUE | FALSE   # or 會回傳TRUE
FALSE | FALSE

TRUE & TRUE
TRUE & FALSE   # and會回傳FALSE
FALSE & FALSE

select(straw_hat_df, name, gender)

# filter()函數: 觀測值（列）選擇
# select()函數: 變數（欄）選擇 
straw_hat_df %>% 
  select(name, gender, birthday, age) %>%
  filter(age > 20)          # 上一行必須先select出來

" 多行註解
select name,
  gender,
  birthday,
  age
  from straw_hat_df
  where age > 20;
"

# mutate()函數: 新增變數（欄）
# arrange()函數: 排序
straw_hat_df %>%
  mutate(birth_year = as.integer(format(Sys.Date(), "%Y")) - age) %>%
  arrange(birth_year)


# summarise()函數: 聚合
# group_by()函數:	分組
# R語言先Groupby在聚合, SQL是先聚合再Groupby
straw_hat_df %>%
  group_by(gender) %>%
  summarise(mean_age = mean(age))



# join 系列函數
library(dplyr)

# 左表格 straw_hat_df
load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
# 右表格 straw_hat_devil_fruit
load(url("https://storage.googleapis.com/r_rookies/straw_hat_devil_fruit.RData"))

# inner_join(): 內部連結
# 合併交集, 左右兩邊都有才會出現值
joined_df <- inner_join(straw_hat_df, straw_hat_devil_fruit)

# left_join(): 左外部連結 
# 左邊的值對應不到就會出現NA
joined_df <- left_join(straw_hat_df, straw_hat_devil_fruit)


# right_join(): 右外部連結
# 右邊的值對應不到就會出現NA
joined_df <- right_join(straw_hat_df, straw_hat_devil_fruit)

# full_join(): 全外部連結
# 左邊和右邊會聯集, 對應不到就出現NA
joined_df <- full_join(straw_hat_df, straw_hat_devil_fruit)


names(straw_hat_devil_fruit)                  # 試著先print全部的column
names(straw_hat_devil_fruit)[1]               # "name"的column在第一個索引值
names(straw_hat_devil_fruit)[1] <- "role"     # 使用新的名稱"role" assign 取代掉第一個索引值
joined_df <- inner_join(straw_hat_df, straw_hat_devil_fruit, by = c("name" = "role"))

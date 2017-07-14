#建立 Data Frame
load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
dim(straw_hat_df)
str(straw_hat_df)
summary(straw_hat_df)
View(straw_hat_df)


#建立新的變數
Sys.Date()
substr(Sys.Date(), start = 1, stop = 4)   #substr用來處理字串, 可擷取後輸出
format(Sys.Date(), "%Y")   #轉換成自己想要的格式

as.integer(format(Sys.Date(), "%Y")) - straw_hat_df$age   #需要用as.integer轉換成整數格式
birthyr <- as.integer(format(Sys.Date(), "%Y")) - straw_hat_df$age
straw_hat_df$birth_year <- birthyr
View(straw_hat_df)
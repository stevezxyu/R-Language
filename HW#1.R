#1.香港搖滾樂隊 Beyond 於 1983 年成立，我們假設成立日期是 1983-12-31，請將成立日期指派給 beyond_start
beyong_start  <- as.Date("1983-12-31")


#2.請以系統日期計算今年是 Beyond 成立幾週年
beyong_start  <- as.Date("1983-12-31")
Sys_Date <- Sys.Date()
day_diff <- Sys.Date() - as.Date("1983-12-31")  # 計算天數差距
years_diff <- day_diff / 365 # 除以 365 換算成年


#3.1999 年 9 月 21 日 1 時 47 分 16 秒發生震央位於南投縣集集鎮，芮氏規模 7.3 的地震，請以文字記錄這個時間，並將它指派給  major_quake_time
major_quake_time <- as.character("1999-09-21 01:47:16 發生震央位於南投縣集集鎮，芮氏規模 7.3 的地震")


#4.1999 年 9 月 21 日 1 時 57 分 15 秒發生第一個芮氏規模超過 6 的餘震，請以文字記錄這個時間，並將它指派給  first_aftershock_time
first_aftershock_time <- as.character("1999-09-21 01:57:15 發生第一個芮氏規模超過 6 的餘震")


#5.請將前兩題的生成的變數轉換為時間類型，計算間隔多久發生第一個芮氏規模超過 6 的餘震
major_quake_time  <- as.POSIXct("1999-09-21 01:47:16")
first_aftershock_time <- as.POSIXct("1999-09-21 01:57:15")
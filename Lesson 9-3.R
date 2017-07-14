#  magrittr 套件
install.packages("magrittr")
library(magrittr)

# %>% （pipe operator）: 可增加運算效率, 減少占用記憶體空間
# 上一行的輸出, 等於下一行的輸入時可使用 %>%
poker_cards(4)

4 %>% poker_cards

sum(1:10)

1:10 %>% sum


Sys.Date() %>%       #還沒進入轉換
  as.integer


Sys.Date() %>%
  format("%Y") %>%   #輸入進integer時已經format轉換2017的數字
  as.integer %>%
  `-` (1983)

# cars_lm <- cars %>%
#lm(formula = dist ~ speed)
cars_lm <- cars %>%                    # %>% 會將資料傳遞至右側函數的第一個位置
lm(formula = dist ~ speed, data = .)   # 使用句點 . 可以改變參數的位置



# 地理資訊的繪圖（Leaflet）
install.packages("leaflet")
library(leaflet)

#hello_map <- leaflet()
#hello_map <- addTiles(hello_map)
#hello_map <- addMarkers(hello_map, lng = 121.539366, lat = 25.017326, popup = "臺灣大學")
#hello_map

hello_map <- leaflet() %>%
  addTiles() %>%
  addMarkers(lng = 121.539366, lat = 25.017326, popup = "臺灣大學")
hello_map


# setView() 用來設定地圖中心與縮放比例
leaflet() %>% 
  setView(lng = 121.539366, lat = 25.017326, zoom = 14) %>% 
  addProviderTiles("Thunderforest.OpenCycleMap")  
# http://leaflet-extras.github.io/leaflet-providers/preview/index.html  網頁有各種樣式地圖



# addMarkers() 新增地點的標記與點擊後出現的訊息
stores <- read.csv("https://storage.googleapis.com/r_rookies/stores711inTP.csv", encoding = "UTF-8")
head(stores)

# 標記7-11便利商店的標記
markers_711 <- leaflet(data = stores) %>%
  addTiles() %>%
  addMarkers(~lng, ~lat, popup = ~as.character(popups1), 
             icon = list(iconUrl = "https://storage.googleapis.com/r_rookies/711_logo.gif", iconSize = c(20, 20)))
markers_711

#載入 Excel 試算表
install.packages("readxl")
library(readxl)

download_path <- "~/Downloads/iris.xlsx"
iris_xlsx_df <- read_excel(download_path)

#載入 SAS 資料集
install.packages("haven")
library(haven)

smoking_sas_data <- read_sas("http://storage.googleapis.com/r_rookies/smoking.sas7bdat")


#載入JSON (JavaScript Object Notation)
install.packages("jsonlite")
library(jsonlite)

#json是一個List的格式
#四個key對應四個value, 可以有文字、數字、陣列
friends_json <- '{
"genre": "Sitcom",
"seasons": 10,
"episodes": 236,
"stars": ["Jennifer Aniston", "Courteney Cox", "Lisa Kudrow", "Matt LeBlanc", "Matthew Perry", "David Schwimmer"]
}'
length(friends_json)


friends <- fromJSON(friends_json)
class(friends)
friends
friends$seasons
friends$stars[5]

paste("六人行有幾季：", friends$seasons)
paste("Who stars Rachel Green：", friends$stars[1])


#fromJSON() 函數來載入, 是一個Dataframe（資料框）
friends <- fromJSON(friends_json)
starring_json <- '[
  {"character": "Rachel Green", "star": "Jennifer Aniston"},
{"character": "Monica Geller", "star": "Courteney Cox"},
{"character": "Phoebe Buffay", "star": "Lisa Kudrow"},
{"character": "Joey Tribbiani", "star": "Matt LeBlanc"},
{"character": "Chandler Bing", "star": "Matthew Perry"},
{"character": "Ross Geller", "star": "David Schwimmer"}
]'

friends_cast <- fromJSON(starring_json)
View(friends_cast)


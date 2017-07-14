url <- "https://storage.googleapis.com/r_rookies/iris.csv" # 在雲端上儲存了一份 csv 檔案

#讀取 csv
#header = TRUE 告訴 R 語言這個資料的第一列（The first row）是變數名稱
iris_csv_df <- read.table(url, sep = ",", header = TRUE)
head(iris_csv_df)

iris_csv_df <- read.table(url, sep = ",", header = TRUE,
                          colClasses = c("numeric", "numeric", "numeric", "numeric", "character"))
str(iris_csv_df)

#讀取 tsv
url <- "https://storage.googleapis.com/r_rookies/iris.tsv" # 在雲端上儲存了一份 tsv 檔案
iris_tsv_df <- read.table(url, sep = "\t", header = TRUE)
head(iris_tsv_df)

#讀取 txt
url <- "https://storage.googleapis.com/r_rookies/iris.txt" # 在雲端上儲存了一份 txt 檔案
iris_colon_sep_df <- read.table(url, sep = ":", header = TRUE)
head(iris_colon_sep_df)
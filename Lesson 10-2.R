# Kaggle資料分析實戰Project, author: Steve Yu
# Kaggle常用來作機器學習的語言: https://www.kaggle.com/c/titanic
titanic <- read.csv("https://storage.googleapis.com/r_rookies/kaggle_titanic_train.csv")
dim(titanic)
str(titanic)
summary(titanic)

# 決策樹分類器
install.packages("rpart")
library(rpart)

# Download資料
url <- "https://storage.googleapis.com/py_ds_basic/kaggle_titanic_test.csv"
to_predict <- read.csv(url)
summary(to_predict)

# 尋找鐵達尼號沈船, 船上的人存活機率?
# Step1: 先決定Data中, 哪些是有用的資料, 觀察資料結構
sum(titanic$Embarked == "")         # 檢查是真實的空白遺漏值, 並非NA

# Data做split分割
data_split <- function(df, train_percent = 0.7) {
  n <- nrow(df)
  shuffled_df <- df[sample(n), ]
  train_df <- df[1:round(train_percent * n), ]
  test_df <- df[(round(train_percent * n) + 1):n, ]
  return(list(train = train_df, test = test_df))
}

# 填補空白的遺漏值
titanic$Embarked[titanic$Embarked == ""] <- "S"          # 用S填補空白值
titanic$Embarked <- as.character(titanic$Embarked)
titanic$Embarked <- factor(titanic$Embarked)

# 填補遺漏值: 使NA值改為真實的值
titanic$Age[is.na(titanic$Age)] <- mean(titanic$Age, na.rm = TRUE)

# 選出column的陣列assign titanic_full
titanic_full <- titanic[, c("Survived", "Pclass", "Sex", "Age", "SibSp", "Parch", "Fare", "Embarked")]

titanic_train <- data_split(titanic_full)$train 
titanic_test <- data_split(titanic_full)$test


# 使用rpart函數
tree_fit <- rpart(Survived ~ ., data = titanic_train, method = "class")
prediction <- predict(tree_fit,
                      newdata = titanic_test[, c("Pclass", "Sex", "Age", "SibSp", "Parch", "Fare", "Embarked")],
                      type = "class")

head(prediction)                              # 此向量是預測的結果
head(titanic_test$Survived)                   # 此向量是真實的結果
table(prediction, titanic_test$Survived)      # 兩個結果放入table
# 稱為Confusion Matrix, 常應用在醫學上檢測陽性與陰性
# if row 0是negative ,則數值表示 160 為true negative, 33 為false negative

conf_mat <- table(prediction, titanic_test$Survived)
accuracy <- sum(diag(conf_mat)) / sum(conf_mat)       # 對角線相加


# 填補預測的結果
to_predict$Age[is.na(to_predict$Age)] <- mean(to_predict$Age, na.rm = TRUE)
to_predict$Fare[is.na(to_predict$Fare)] <- mean(to_predict$Fare, na.rm = TRUE)
summary(to_predict)

ans <- predict(tree_fit,
               newdata = to_predict[, c("Pclass", "Sex", "Age", "SibSp", "Parch", "Fare", "Embarked")],
               type = "class")

# "passengerId"結合ans = "Survived"
ans_df <- data.frame(PassengerId = to_predict$PassengerId,
                     Survived = ans)
ans_df$Survived <- as.integer(as.character(ans_df$Survived))    # 轉換資料型態  
write.csv(ans_df, file = "/~/Desktop/submission.csv", row.names = FALSE)


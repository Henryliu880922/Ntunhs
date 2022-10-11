data1<-read.xlsx("表4.16_空白.xlsx", sheet="工作表1")
cov(data1$廣告秒數, data1$銷售收入) #共變數
cor(data1$廣告秒數, data1$銷售收入) #相關係數
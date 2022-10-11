data1<-read.xlsx("圖4.12_空白.xlsx", sheet="Sheet1")
boxplot(data1, col = rainbow(ncol(data1)))

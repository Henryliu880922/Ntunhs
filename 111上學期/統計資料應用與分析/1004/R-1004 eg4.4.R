data1<-read.xlsx("例4.4_空白.xlsx", sheet="工作表1")
md<-median(data1$行動通訊費)
print(md)

getmode <- function(v) {
  uniqv <- unique(v)                         
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

getmode(data1$行動通訊費)

uniqv<-unique(data1$行動通訊費)
match1<-match(data1$行動通訊費, uniqv)
tab1<-tabulate(match1)
uniqv[which.max(tab1)]

as.numeric(names(table(data1$行動通訊費)))[which.max(table(data1$行動通訊費))] 
table(data1$行動通訊費) #table可以看出資料的分布情況
which.max(table(data1$行動通訊費))#which.max找出出現最多次數的值及index
names(table(data1$行動通訊費))#names則是將資料的名稱找出來，找出來的值為文字格式
names(table(data1$行動通訊費))[which.max(table(data1$行動通訊費))]
getmode1<-function(v){
  as.numeric(names(table(v)))[which.max(table(v))]
}
getmode1(data1$行動通訊費)


install.packages("fBasics") #需新增此套件
library(fBasics) #呼叫此套件
round(basicStats(data1$行動通訊費),2) #直接跑出一些相關的分析

#四分位數
Q1 <- quantile(data1$行動通訊費, 1 / 4) #quantile(data, probs = seq(0, 1, 0.25))
Q2 <- quantile(data1$行動通訊費, 2 / 4) #中位數
Q3 <- quantile(data1$行動通訊費, 3 / 4) 
print(Q1) 
print(Q2) 
print(Q3)

#百分位數
quantile(data1$行動通訊費, seq(0.1,1,0.1)) #seq(from=, to, by=) 從哪個值到哪個值以及切點大小

#全距 (最容易受極端值影響)
max1<-max(data1$行動通訊費)
min1<-min(data1$行動通訊費)
r<-max1-min1

#四分位距
IQR=Q3-Q1
IQR
data1<-read.xlsx("表4.9_空白.xlsx", sheet="工作表1")

#標準差 sd=standard Deviation
sd(data1$互動式教學法) 
sd(data1$簡報式教學法) 

#變異數 var=variance
var(data1$互動式教學法)
var(data1$簡報式教學法)
sd(data1$互動式教學法)^2
sd(data1$簡報式教學法)^2
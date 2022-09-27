#install.packages("openxlsx",dependencies = TRUE)
library(openxlsx)
#install.packages("ggplot2")
library(ggplot2)
#讀取的資料夾路徑
setwd("C:\\Users\\eshen\\Desktop\\R")
#讀取的資料檔
data1<-read.xlsx("表3.6.春山秋水春季營收_空白.xlsx", sheet="工作表1")
#切出資料的欄位 break=分組的切點 labels=資料的標籤
breaks1=c(50,60,70,80,90,100,110,120)
labels1=c("50-59", "60-69", "70-79", "80-89", "90-99", "100-109", "110-119")
data1$profit<-cut(data1$春山秋水春季的營收, breaks=breaks1,labels=labels1)
#輸入各項資料
n<-length(data1$profit) #資料長度
fr<-table(data1$profit) #組限
re_fr<-fr/sum(fr) #相對次數
cf<-cumsum(fr) #累加次數
cf1<-c(0,cumsum(fr)) #肩形圖資料點
crf<-cf/sum(fr) #累加相對次數
crf1<-cf1/sum(fr) 
#肩形圖
plot(breaks1, crf1, main="營業收入的累加次數圖（肩形圖）", col="blue")
lines(breaks1, crf1) 
text(x=breaks1, y=crf1+0.08, labels=round(crf1, digits = 2 ))
#直條圖
labels2<-factor(labels1, levels=c("50-59", "60-69", "70-79", "80-89", "90-99", "100-109", "110-119"))
table_freq_group=rbind(fr, re_fr, cf, crf)
table_freq_group_t<-data.frame(t(table_freq_group))
ggplot(table_freq_group_t, aes(labels2, fr, fill=labels2))+geom_bar(stat="identity")+xlab("營收級距")+ylab("次數")+labs(fill="營收級距")
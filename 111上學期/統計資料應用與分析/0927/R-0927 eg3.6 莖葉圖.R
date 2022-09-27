#讀取資料檔
data1<-read.xlsx("表3.6.春山秋水春季營收_空白.xlsx", sheet="工作表1")
#莖葉圖
stem(data1$春山秋水春季的營收)
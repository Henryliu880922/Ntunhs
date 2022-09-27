data1<-read.xlsx("表3.4_空白.xlsx", sheet="工作表1") #讀出資料檔
#直條圖
ggplot(data1, aes(x = 性別, y = 人數, fill = 支持政黨)) +geom_bar(position = "dodge", stat = "identity")+geom_text(aes(label = 人數), vjust = -0.5, size = 4.0, position = position_dodge(0.9))
#堆疊直條圖
ggplot(data1, aes(x = 性別, y = 人數, fill = 支持政黨)) +geom_bar(position = "stack", stat = "identity")+geom_text(aes(label = 人數), vjust = -0.5, size = 4.0, position = position_stack(0.9))
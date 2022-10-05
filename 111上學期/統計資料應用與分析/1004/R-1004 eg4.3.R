data1<-read.xlsx("表4.3_空白.xlsx", sheet="工作表1")
# 幾何平均數
geomean_log=mean(log(data1$變動比[2:8])) # $後面是欄位 [內是抓資料欄位]
g_profit=exp(geomean_log)-1 # 報酬率
print(g_profit) #印出報酬率

#算數平均數
average=mean(data1$變動比[2:8])
mean_profit=average-1
print(mean_profit)
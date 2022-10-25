data<-read.xlsx("表10.3凍頂烏龍茶重量.xlsx", sheet="工作表1")
n<-length(data$凍頂烏龍茶重量)
z<-qnorm(0.05, lower.tail = TRUE)
mean_weight<-mean(data$凍頂烏龍茶重量)
std_weight<-sd(data$凍頂烏龍茶重量)
lower_bound<-150+z*std_weight/sqrt(n)
lower_bound

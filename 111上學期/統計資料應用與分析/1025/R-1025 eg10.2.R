data<-read.xlsx("例10.2.xlsx", sheet="工作表1")
mean_sleep<-6.7
n<-49
std_sleep<-0.5
alpha<-0.05
z_score=(mean_sleep-7)/(std_sleep/sqrt(n))
qnorm(0.05)

data<-read.xlsx("例10.3.xlsx", sheet="工作表1")
mean_people<-106
n<-49
std_people<-10.5
alpha<-0.95
z_score=(mean_people-100)/(std_people/sqrt(n))
qnorm(alpha)

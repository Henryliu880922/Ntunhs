data1<-read.xlsx("竹北市與新竹市房價_空白.xlsx", sheet="工作表1")
z.test(x=data1$竹北市房價, y=data1$新竹市房價, sigma.x=4.62, sigma.y=7.24, conf.level=.99)
/*一、建立與讀取資料
第 1 招：程式庫名稱設定敘述:LIBNAME
宣告路徑，建立一個資料館，命名為 OUTPUT*/
LIBNAME OUTPUT " C:\Users\eshen\Desktop\SAS";
/*第 2 招：資料讀取(開啟資料檔)*/
DATA DM5000; /*資料檔名*/
SET OUTPUT.DM5000;/*對檔案執行甚麼動作*/
RUN;
/*第 2.1 招：資料轉檔(匯入及匯出資料檔)*/
/*EXCEL 轉SAS*/
PROC IMPORT OUT=DM1000
	DATAFILE="C:\Users\eshen\Desktop\SAS\DM1000.XLS"
	DBMS=EXCEL REPLACE;
RUN;
/*SAS 轉EXCEL*/
PROC EXPORT DATA=DM5000 /*把DM5000 SAS轉成DM5000 EXCEL*/
OUTFILE= "C:\Users\eshen\Desktop\SAS\DM5000"
DBMS=EXCEL REPLACE;
RUN;

/*一、建立與讀取資料
第 1 招：程式庫名稱設定敘述:LIBNAME
宣告路徑，建立一個資料館，命名為 OUTPUT*/
LIBNAME OUTPUT " C:\Users\eshen\Desktop\SAS";
/*第 2 招：資料讀取(開啟資料檔)*/
DATA DM5000; /*資料檔名*/
SET OUTPUT.DM5000N;/*對檔案執行甚麼動作*/
RUN;
/*第 3 招：簡單運算 四則運算，增加四個新變項 Y1-Y4*/
DATA DM5000;
SET DM5000;
Y1=OPD0+OPD1;
Y2=OPD0-OPD1;
Y5=ERFEE0+ERFEE1+ERFEE2;
Y3=OPD0*2;
Y4=OPDFEE2/5;
RUN;
/*第 4 招：條件式 IF .... THEN... ; .....ELSE ; // IF .... THEN.....; ELSE
IF...THEN... ;....ELSE...; 把變項重新分類，可同時做多個變項的重新分類*/
DATA DM5000;
SET DM5000;
IF AGE<65 THEN AGEN=1; ELSE AGEN=2;
IF AGE<50 THEN AGEP=1;
ELSE IF 50<=AGE<65 THEN AGEP=2;
ELSE AGEP=3;
RUN;
/*將新檔案匯入及轉檔*/
PROC IMPORT OUT=ScoreB
	DATAFILE="C:\Users\eshen\Desktop\SAS\S123B.XLSX"
	DBMS=EXCEL REPLACE;
RUN;
/*將新檔案加總分*/
DATA Scoreb;
SET Scoreb;
IF B1=2 Then B1N=1; Else B1N=0;
IF B2=3 Then B2N=1; Else B2N=0;
IF B3=1 Then B3N=1; Else B3N=0;
IF B4=4 Then B4N=1; Else B4N=0;
B5=(B1N+B2N+B3N+B4N)*25;
RUN;
/*串起兩份檔案*/
PROC SORT DATA=Score123; BY ID;RUN;
PROC SORT DATA=Scoreb; BY ID;RUN;
DATA ScoreAB;
MERGE Score123(IN=A) Scoreb(IN=B);
BY ID;
IF A; /*以某份檔案為主*/
RUN;
/*增加一份新檔案*/
DATA Scorec;
SET Score123;
if sex=1 then output;
RUN;
/*串起三份檔案*/
PROC SORT DATA=Score123; BY ID;RUN;
PROC SORT DATA=Scoreb; BY ID;RUN;
PROC SORT DATA=Scorec; BY ID;RUN;
DATA ScoreAB;
MERGE Score123(IN=A) Scoreb(IN=B) Scorec(IN=C);
BY ID;
IF C; /*以某份檔案為主*/
RUN;
/*以報表產生各題答對的人數*/
PROC FREQ DATA=Scoreab;
Table A1N A2N A3N A4N B1N B2N B3N B4N A5 B5;
RUN;
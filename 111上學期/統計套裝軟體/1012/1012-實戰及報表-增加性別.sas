/* 
實戰算出分數及產出報表
*/
PROC IMPORT OUT=Scoresex
	DATAFILE="C:\Users\eshen\Desktop\SAS\S123.XLSX"
	DBMS=EXCEL REPLACE;
RUN;
DATA Scoresex;
SET Scoresex;
IF A1=2 Then A1N=1; Else A1N=0;
IF A2=3 Then A2N=1; Else A2N=0;
IF A3=1 Then A3N=1; Else A3N=0;
IF A4=4 Then A4N=1; Else A4N=0;
A5=(A1N+A2N+A3N+A4N)*25;
PROC UNIVARIATE DATA=Scoresex;
Class Sex;
VAR A1N ;
RUN;
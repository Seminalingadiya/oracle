create tablespace s1 datafile 'C:\app\PC_25\oradata\orahome\data.dbf' size 10m;

Tablespace created.

create table s1(no number(4)) tablespace s1;

Table created.

 desc s1
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 NO                                                 NUMBER(4)

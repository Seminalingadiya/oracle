create table dept
(deptno number(2) primary key,
dname varchar(14) not null,
loc varchar(13));


insert all
into dept values(10,'Accounting','NewYourk')
into dept values(20,'Research','Dallas')
into dept values(30,'sales','Chicago')
into dept values(40,'operations','boston')
select *from dual;

 select *from dept;

    DEPTNO DNAME          LOC
---------- -------------- -------------
        10 Accounting     NewYourk
        20 Research       Dallas
        30 sales          Chicago
        40 operations     Boston

create table emp
(empno number(4) primary key,
ename varchar(10) not null,
job varchar(9),
mgr number(4),
hiredate date,
sal number(7,2),
comm number(7,2),
deptno number(2)not null, foreign key(deptno) references dept(deptno));

insert into emp(empno,ename,job,mgr,hiredate,sal,deptno)values(7369,'smith','clerk',7902,'17dec-80',800,20);

insert into emp(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values(7499,'allen','salesman',7698,'20-feb-81',1600,300,30);

insert into emp(empno,ename,job,mgr,hiredate,sal,comm,deptno) values(7521,'ward','salesman',7698,'22-feb-81',1250,500,30);

insert into emp(empno,ename,job,mgr,hiredate,sal,deptno)values(7566,'jones','manager',7839,'02-apr-81',2975,20);

insert into emp(empno,ename,job,mgr,hiredate,sal,comm,deptno) values(7654,'martin','salesman',7698,'28-sep-81',1250,1400,30);

insert into emp(empno,ename,job,mgr,hiredate,sal,deptno)values(7698,'blake','manager',7839,'01-may-81',2850,30);

insert into emp(empno,ename,job,mgr,hiredate,sal,deptno)values(7782,'clark','manager',7839,'09-jun-81',2450,10);

insert into emp(empno,ename,job,mgr,hiredate,sal,deptno)values(7788,'scott','analyst',7566,'19-apr-87',3000,20);

insert into emp(empno,ename,job,hiredate,sal,deptno)values(7839,'king','president','17-nov-81',5000,10);

insert into emp(empno,ename,job,mgr,hiredate,sal,deptno)values(7844,'turner','salesman',7698,'08-sep-81',1500,30);

insert into emp(empno,ename,job,mgr,hiredate,sal,deptno)values(7876,'adams','clerk',7788,'23-may-87',1100,20);

insert into emp(empno,ename,job,mgr,hiredate,sal,deptno)values(7900,'james','clerk',7698,'03-dec-81',950,30);

insert into emp(empno,ename,job,mgr,hiredate,sal,deptno)values(7902,'ford','analyst',7566,'03-dec-81',3000,20);

insert into emp(empno,ename,job,mgr,hiredate,sal,deptno)values(7934,'miller','clerk',7782,'23-jan-82',1300,10);

 select *from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7369 smith      clerk           7902 17-DEC-80        800
        20

      7499 allen      salesman        7698 20-FEB-81       1600        300
        30

      7521 ward       salesman        7698 22-FEB-81       1250        500
        30


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7566 jones      manager         7839 02-APR-81       2975
        20

      7654 martin     salesman        7698 28-SEP-81       1250       1400
        30

      7698 blake      manager         7839 01-MAY-81       2850
        30


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7782 clark      manager         7839 09-JUN-81       2450
        10

      7788 scott      analyst         7566 19-APR-87       3000
        20

      7839 king       president            17-NOV-81       5000
        10


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7844 turner     salesman        7698 08-SEP-81       1500
        30

      7876 adams      clerk           7788 23-MAY-87       1100
        20

      7900 james      clerk           7698 03-DEC-81        950
        30


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7902 ford       analyst         7566 03-DEC-81       3000
        20

      7934 miller     clerk           7782 23-JAN-82       1300
        10

14 rows selected. 

create table salgrade
(grade number,
 losal number,
 hisal number);
 
Table created.

insert all
into salgrade values(1,700,1200)
into salgrade values(2,1201,1400)
into salgrade values(3,1401,2000)
into salgrade values(4,2001,3000)
into salgrade values(5,3001,9999)
select *from dual;

5 rows created.

select *from salgrade;

     GRADE      LOSAL      HISAL
---------- ---------- ----------
         1        700       1200
         2       1201       1400
         3       1401       2000
         4       2001       3000
         5       3001       9999
     











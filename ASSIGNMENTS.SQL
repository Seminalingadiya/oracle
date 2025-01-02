ASSIGNMENT-1
1. select * from emp;
2. desc emp;
3.
4. select empno from emp;
5. 
6. select comm from emp;
7. select mgr from emp;   
8. select deptno from emp;
9. select empno,ename,job,mgr from emp;
10. select ename,mgr from emp;
11. select job,comm from emp;
12. select ename,deptno from emp;
13. select deptno,ename,sal,job from emp;
14. select deptno,dname from dept;
15. select grade from salgrade;
16.select losal,hisal,grade from salgrade;


ASSIGNMENT-2
1. select *from emp where job='manager';
2. select *from emp where job='president';
3. select *from emp where(job='manager' or job='clerk');
4. select *from emp where(job='manager')and deptno='10';
5. select *from emp job where deptno='10';
6. 
7.select *from emp where(job='manager' or job='analyst')and deptno='10';
8.
9. select *from emp where(job='clerk')and deptno='10';


ASSIGNMENT -3 
1.  alter table emp rename column ename to semina;
2. alter table emp rename column sal to salaries;
3. alter table emp rename column semina to employee_name;
    alter table emp rename column job to designation;
4. select designation,salaries+100 from emp where designation='manager';
5. select employee_name,salaries+1000,salaries-4500 from emp;
6. select employee_name,salaries+100 as sal from emp where employee_name='scott';
7. select employee_name,salaries+500,salaries-300,salaries/100 from emp;
8. select employee_name,salaries*5/100 as sal from emp;
9. select designation,salaries*8/100 as sal from emp where designation ='salesman';
10. select designation,salaries*2 as sal from emp where designation='manager';
11. select employee_name,salaries/30 as daily_wages from emp;
12. select salaries*12 as annsal from emp;
13. select concat(empno,employee_name) as employee from emp;
14.select e1.employee_name,e2.designation from emp e1,emp e2 as comp_name;
    select concat(employee_name,designation)as comp_name from emp;
15.
16. select salaries*12+comm as annual_sal from emp;
17. select distinct deptno from emp;
18. select  distinct deptno from emp;
19. select employee_name from emp where designation='manager' and comm is null;
20.select employee_name from emp where comm is not null;
21.select distinct designation from emp;
22.

ASSIGNMENT -4
1. select hiredate from emp order by hiredate desc;
2. select hiredate from emp order by hiredate asc;
3. select Dname from dept where deptno>20;
4. select employee_name from emp where comm>salaries;
5. select employee_name from emp where comm<salaries;
6. select employee_name from emp where salaries between 500 and 1500;
7.select employee_name from emp where mgr=7902 or mgr=7566 or mgr=7788;
8.select employee_name from emp where mgr between 7788 and 7092;
9.select employee_name from emp where employee_name like 'S%';
10.select employee_name from emp where employee_name='scott';
11. select employee_name from emp where designation='manager' and employee_name like'____';
12.select *from emp where not designation='manager';
13.select employee_name,designation from emp where not designation like 'a%';
14.select employee_name,mgr from emp where mgr is not null;
15.select employee_name ,designation,deptno from emp where (designation='manager' or designation='clerk') and deptno=10;
16.select employee_name,salaries from emp where (designation='manager' or designation='salesman') and salaries>1500;
17.select designation,avg(salaries)from emp group by designation;
18.select designation,avg(salaries)from emp where not designation='manager' group by designation;
19.select avg(salaries)from emp group by designation;
20.select designation,avg(salaries)from emp group by designation;
21.select avg(salaries),sum(salaries) from emp where not designation='manager' and not designation='clerk' and not designation='salesman';


ASSIGNMENT -5
1.select abs(-18) from dual;
2.select abs(30) from dual;
3.select ceil(22.5) from dual;
4.select ceil(31.2) from dual;
5.select floor(37.2) from dual;
6.select lower('SEMINA')from dual;
7.select power(6,2) from dual;
8.select substr('ename',1,2) from emp;
9.select hiredate from emp;
10.select soundex('ename')from emp;
11.select soundex('ename')from emp where ename='allen';
12.select min(salaries) from emp;
13.select max(salaries) from emp;
14.select length ('ename') from emp;
15.select length ('job') from emp;
16.select vsize('ename') from emp;
17.select chr(2000) from emp;
18.select rowid,ename from emp;
19.select *from all_users;
20.select *from dba_users;
21.select vsize(ename) from emp where deptno='10';
22.select sum(sal) from emp;
23.select grade,losal,hisal,decode(hisal,9999,1,3000,2,2000,3,1400,4,1200,5) from salgrade;
24.select e.*from emp e join dept d on
25.
26.
27.
28.
29.
30.
31.
32.
33.
34
35.
36.
37.
38.
39.
40.
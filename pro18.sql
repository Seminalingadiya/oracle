declare
	empid emp.empno % type;
	empname emp.ename % type;
begin
	empid:=1;
	empname:='semina';
	dbms_output.put_line('Employee Id :' ||empid);
	dbms_output.put_line('Employee Name :' ||empname);
end;
/
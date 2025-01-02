declare
	total number(5);
	per number(5,2);
	grade integer;
	s1 integer;
	s2 integer;
	s3 integer;
	s4 integer;
begin
	s1:=&s1;
		dbms_output.put_line(s1);
	s2:=&s2;
		dbms_output.put_line(s2);
	s3:=&s3;
		dbms_output.put_line(s3);
	s4:=&s4;
		dbms_output.put_line(s4);
	total:=s1+s2+s3+s4;
		dbms_output.put_line('total mark is : '|| total);
	per:=total/4;
		dbms_output.put_line('percentage is : '|| per);
	if(per>90)then
		dbms_output.put_line('A');
	elsif(per<90 and per>80)then
		dbms_output.put_line('B');
	elsif(per<80 and per>70)then
		dbms_output.put_line('C');
	elsif(per<70 and per>60)then
		dbms_output.put_line('D');
	elsif(per<60)then
		dbms_output.put_line('FAIL');
	end if;
end;
/
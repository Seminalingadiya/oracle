declare
	c_id customer.id % type;
	c_name customer.name % type;
	c_sal customer.salary % type;
	cursor c_customer is
	select id,name,salary from customer;
begin
	open c_customer;
loop
	fetch c_customer into c_id,c_name,c_sal;
	exit when c_customer % notfound;
		dbms_output.put_line(c_id || '*' ||c_name || '*' ||c_sal);
	end loop;
	close c_customer;
end;
/
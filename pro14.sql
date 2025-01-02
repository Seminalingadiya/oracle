declare
	c_id customer.id % type:=&cc_id;
	c_name customer.name % type;
	c_addr customer.address % type;
	--user define exception
	ex_invalid_id exception;
begin
	if c_id<=0 then
		raise ex_invalid_id;
	else
		select name,address into c_name,c_addr from customer where id=c_id;
		dbms_output.put_line('Name :' || c_name);
		dbms_output.put_line('Address :' || c_addr);
	end if;
exception
	when ex_invalid_id then
	dbms_output.put_line('ID must be greater than zero!');
	when no_data_found then
	dbms_output.put_line('No Such Customer!');
        when others then
	dbms_output.put_line('Error!');
end;
/
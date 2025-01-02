declare
	c_id customer.id % type:=2;
	c_name customer.name % type;
	c_addr customer.address % type;
begin
	select name,address into c_name,c_addr from customer where id=c_id;
	dbms_output.put_line('Name :' || c_name);
	dbms_output.put_line('Address :' || c_addr);
exception
	when no_data_found then
	dbms_output.put_line('No Such Customer!');
	when too_many_rows then
	dbms_output.put_line('The Database returns more that one customer');
	when others then
	dbms_output.put_line('Error!');
end;
/


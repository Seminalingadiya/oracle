CREATE FUNCTION
create or replace function totalcustomer
return number IS
total number(2):=0;
begin
select count(*) into total from customer;
return total;
end;
/

CALL FUNCTION
declare
	c number(2);
begin
	c:=totalcustomer();
	dbms_output.put_line('total no of customer :'|| c);
end;
/
begin
	for k in 1..10 loop
	--note that k was not declared
	dbms_output .put_line(k);
	end loop;
end;
/
declare
	grade char(1):='B';
begin
	case grade
	when 'A' then dbms_output.put_line('Excell ent');
	when 'B' then dbms_output.put_line('very good');
	when 'C' then dbms_output.put_line('good');
	when 'D' then dbms_output.put_line('average');
	when 'E' then dbms_output.put_line('passed with grace');
	else dbms_output.put_line('failed');
	end case;
end;
/
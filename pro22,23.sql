create or replace trigger dml_trig before insert or update or delete on emp
for each row
begin
	case
		when inserting then
			dbms_output.put_line('recored inserted');
		when updating then
			dbms_output.put_line('recored updated');
		when deleting then
			dbms_output.put_line('recored deleted');
	end case;
end;
/

create or replace trigger display_salary_changes
before delete or insert or update on emp
for each row
	when(new.id>0)
declare
	sal_diff number;
begin
	sal_diff:=:new.salary-:old.salary;
	dbms_output.put_line('old salary:' || :old.salary);
	dbms_output.put_line('new salary:' || :new.salary);
	dbms_output.put_line('salary difference:' || sal_diff);
end;
/
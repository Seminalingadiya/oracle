create or replace procedure insert_record
(id in number ,name in varchar ,age in number)is
begin
   insert into studdd values(id,name,age);
end;
/


begin
   insert_record(101,'semina',19);
   dbms_output.put_line('record inserted');
end;
/
declare
   a integer:=30;
   b integer:=40;
   c integer;
   f real;
begin
   c:=a+b;
   dbms_output.put_line('value of c :' || c);
   f:=100.0/3.0;
   dbms_output.put_line('value of f :' || f);
end;
/
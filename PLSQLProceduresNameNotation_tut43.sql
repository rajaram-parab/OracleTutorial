create or replace function add_num 
(var1 number,var2 number default 0, var3 number) return number 
is
begin
dbms_output.put_line('var1 -> '||var1);
dbms_output.put_line('var2 -> '||var2);
dbms_output.put_line('var3 -> '||var3);
return var1+var2+var3;
end;

set serveroutput on;
begin
dbms_output.put_line(add_num(var3=>10,var1=>5));
end;


set serveroutput on;
DECLARE
v_output number;
begin
v_output := add_num(var1=>5,var3=>50);
dbms_output.put_line(v_output);
end;

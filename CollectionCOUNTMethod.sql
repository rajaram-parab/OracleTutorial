--COLLECTION METHOD COUNT
SET SERVEROUTPUT ON;
DECLARE
TYPE my_nested_table is table of number;
 var_nt my_nested_table := my_nested_table(9,18,27,36,45,54,63,72,80);
BEGIN
dbms_output.put_line(var_nt.COUNT);

END;


SET SERVEROUTPUT ON;
DECLARE
TYPE my_nested_table is table of number;
 var_nt my_nested_table := my_nested_table(9,18,27,36,45,54,63,72,80);
BEGIN
--dbms_output.put_line(var_nt.COUNT);
for idx in 1..var_nt.COUNT
loop
dbms_output.put_line('Value stored in index '|| idx ||' '||var_nt(idx));
end loop;
END;
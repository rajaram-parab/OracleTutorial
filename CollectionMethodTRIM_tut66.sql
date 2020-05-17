DECLARE
TYPE nested_table is table of number;
var_nt nested_table := nested_table(2,4,6,8,10,12,14,16,18,20);

BEGIN
var_nt.TRIM;

for idx in var_nt.FIRST..var_nt.LAST
loop
DBMS_OUTPUT.PUT_LINE(var_nt(idx));
end loop;
END;



DECLARE
TYPE nested_table is table of number;
var_nt nested_table := nested_table(2,4,6,8,10,12,14,16,18,20);

BEGIN
var_nt.TRIM(4);

for idx in var_nt.FIRST..var_nt.LAST
loop
DBMS_OUTPUT.PUT_LINE(var_nt(idx));
end loop;
END;



DECLARE
TYPE nested_table is table of number;
var_nt nested_table := nested_table(2,4,6,8,10,12,14,16,18,20);

BEGIN
var_nt.TRIM(11);

for idx in var_nt.FIRST..var_nt.LAST
loop
DBMS_OUTPUT.PUT_LINE(var_nt(idx));
end loop;
END;
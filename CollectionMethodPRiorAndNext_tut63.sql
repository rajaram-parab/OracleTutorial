DECLARE
TYPE nested_table is table of varchar2(20);
var_nt nested_table := nested_table(9,18,27,36,45,54,63,72,81,90);
BEGIN

DBMS_OUTPUT.PUT_LINE('Value before 3rd Index '|| var_nt.PRIOR(3));
DBMS_OUTPUT.PUT_LINE('Value before 3rd Index '|| var_nt(var_nt.PRIOR(3)));

END;

DECLARE
TYPE nested_table is table of varchar2(20);
var_nt nested_table := nested_table(9,18,27,36,45,54,63,72,81,90);
BEGIN

DBMS_OUTPUT.PUT_LINE('Value after 3rd Index '|| var_nt.NEXT(3));
DBMS_OUTPUT.PUT_LINE('Value after 3rd Index '|| var_nt(var_nt.NEXT(3)));
  
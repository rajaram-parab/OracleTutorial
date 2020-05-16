DECLARE
TYPE v_arry is varray (5) of varchar2(10);
var_arry v_arry := v_arry();
BEGIN

DBMS_OUTPUT.PUT_LINE('LIMIT '||var_arry.LIMIT);
DBMS_OUTPUT.PUT_LINE('COUNT '||var_arry.COUNT);


END;


DECLARE
TYPE v_arry is varray (5) of varchar2(10);
var_arry v_arry := v_arry();
BEGIN

var_arry.EXTEND;
var_arry(1) :='IRONMEN';
DBMS_OUTPUT.PUT_LINE('LIMIT '||var_arry.LIMIT);
DBMS_OUTPUT.PUT_LINE('COUNT '||var_arry.COUNT);


END;


DECLARE
TYPE nested_table is table of number;
var_nt nested_table := nested_table(9,18,27,36,45);
BEGIN

--var_arry.EXTEND;
--var_arry(1) :='IRONMEN';
DBMS_OUTPUT.PUT_LINE('LIMIT '||var_nt.LIMIT);
DBMS_OUTPUT.PUT_LINE('COUNT '||var_nt.COUNT);

END;

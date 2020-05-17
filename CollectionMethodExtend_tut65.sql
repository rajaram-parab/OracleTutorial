DECLARE
TYPE nested_table is table of number;
var_nt nested_table :=nested_table(); 

BEGIN

var_nt(1):=10;
DBMS_OUTPUT.PUT_LINE('Data at index 1 is '||var_nt(1));

END;


DECLARE
TYPE nested_table is table of number;
var_nt nested_table :=nested_table(); 

BEGIN
var_nt.EXTEND;
var_nt(1):=10;
DBMS_OUTPUT.PUT_LINE('Data at index 1 is '||var_nt(1));

END;


DECLARE
TYPE nested_table is table of number;
var_nt nested_table :=nested_table(); 

BEGIN
var_nt.EXTEND(3);
var_nt(1):=10;
var_nt(2):=20;
var_nt(3):=30;
DBMS_OUTPUT.PUT_LINE('Data at index 1 is '||var_nt(1));
DBMS_OUTPUT.PUT_LINE('Data at index 2 is '||var_nt(2));
DBMS_OUTPUT.PUT_LINE('Data at index 3 is '||var_nt(3));

END;


DECLARE
TYPE nested_table is table of number;
var_nt nested_table :=nested_table(); 

BEGIN
var_nt.EXTEND;
var_nt(1):=10;
DBMS_OUTPUT.PUT_LINE('Data at index 1 is '||var_nt(1));
var_nt.EXTEND(5,1);
DBMS_OUTPUT.PUT_LINE('Data at index 3 is '||var_nt(4));

END;





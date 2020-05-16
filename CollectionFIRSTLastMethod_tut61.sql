DECLARE
Type nest_table is table of varchar2(20);
var_nt nest_table := nest_table('Suresh','Ramesh','Shaym','Anil');
BEGIN

DBMS_OUTPUT.PUT_LINE('First Element of Nested Table '||var_nt.FIRST);
DBMS_OUTPUT.PUT_LINE('First Element of Nested Table '||var_nt.LAST);


END;


DECLARE
Type nest_table is table of varchar2(20);
var_nt nest_table := nest_table('Suresh','Ramesh','Shaym','Anil');
BEGIN
var_nt.DELETE(1);
DBMS_OUTPUT.PUT_LINE('First Element of Nested Table '||var_nt.FIRST);
DBMS_OUTPUT.PUT_LINE('First Element of Nested Table '||var_nt.COUNT);
DBMS_OUTPUT.PUT_LINE('First Element of Nested Table '||var_nt.LAST);

END;




DECLARE
Type nest_table is table of varchar2(20);
var_nt nest_table := nest_table('Suresh','Ramesh','Shaym','Anil');
BEGIN
var_nt.TRIM;
DBMS_OUTPUT.PUT_LINE('First Element of Nested Table '||var_nt.FIRST);
DBMS_OUTPUT.PUT_LINE('COUNT Element of Nested Table '||var_nt.COUNT);
DBMS_OUTPUT.PUT_LINE('Last Element of Nested Table '||var_nt.LAST);

END;


DECLARE
Type nest_table is table of varchar2(20);
var_nt nest_table := nest_table('Suresh','Ramesh','Shaym','Anil');
BEGIN
var_nt.DELETE(1);
var_nt.TRIM;
DBMS_OUTPUT.PUT_LINE('First Element of Nested Table '||var_nt.FIRST);
DBMS_OUTPUT.PUT_LINE('COUNT Element of Nested Table '||var_nt.COUNT);
DBMS_OUTPUT.PUT_LINE('Last Element of Nested Table '||var_nt.LAST);

END;
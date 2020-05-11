set serveroutput on;
DECLARE
v_counter number :=0;
v_result number :=0;
BEGIN
While  v_counter < 10 Loop
v_counter := v_counter + 1;
v_result := 19 * v_counter;
DBMS_OUTPUT.PUT_LINE('19 '||' X '||v_counter||' = '||v_result);
End Loop;

END;
/


set serveroutput on;
DECLARE
v_counter number :=0;
v_result number :=0;
BEGIN
While true Loop
v_counter := v_counter + 1;
v_result := 19 * v_counter;
DBMS_OUTPUT.PUT_LINE('19 '||' X '||v_counter||' = '||v_result);
if v_counter >=10 then
EXIT;
end if;
End Loop;
DBMS_OUTPUT.PUT_LINE('OutSide While Loop');
END;
/


set serveroutput on;
DECLARE
v_counter number :=0;
v_result number :=0;
v_test BOOLEAN := true;
BEGIN
While true Loop
v_counter := v_counter + 1;
v_result := 19 * v_counter;
DBMS_OUTPUT.PUT_LINE('19 '||' X '||v_counter||' = '||v_result);
if v_counter >=10 then
v_test := FALSE;
end if;
End Loop;
DBMS_OUTPUT.PUT_LINE('OutSide While Loop');
END;
/




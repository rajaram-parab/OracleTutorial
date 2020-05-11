--set serveroutput on;
DECLARE 
v_counter number :=0;
v_result number :=0;
BEGIN
DBMS_OUTPUT.PUT_LINE(' Using if condition in loop for exit');
LOOP
v_counter := v_counter+1;
v_result :=19 * v_counter;
DBMS_OUTPUT.PUT_LINE('19 '|| ' X '||v_counter||' = '||(19*v_counter));
if v_counter >= 10 then
exit;
end if;
END LOOP;

END;
/

DECLARE 
v_counter number :=0;
v_result number :=0;
BEGIN
DBMS_OUTPUT.PUT_LINE(' Using Exit When In Simple Loop ');
LOOP
v_counter := v_counter+1;
v_result :=19 * v_counter;
DBMS_OUTPUT.PUT_LINE('19 '|| ' X '||v_counter||' = '||(19*v_counter));
EXIT WHEN v_counter >= 10; 
END LOOP;

END;
/

set serveroutput on;
DECLARE
BEGIN
for v_counter in 1 .. 10 loop
DBMS_OUTPUT.PUT_LINE(v_counter);
end loop;
END;
/


set serveroutput on;
DECLARE
BEGIN
for v_counter in REVERSE 1 .. 10 loop
DBMS_OUTPUT.PUT_LINE(v_counter);
end loop;
END;
/


set serveroutput on;
DECLARE
v_counter_start number :=1;
v_counter_end number :=10;
v_counter number :=0;
v_result number :=0;
BEGIN
DBMS_OUTPUT.PUT_LINE('Creating 19 Table Using For Loop');
for v_counter in  v_counter_start .. v_counter_end loop

DBMS_OUTPUT.PUT_LINE('19 '||' X ' || v_counter || ' = ' || (19 * v_counter) );
end loop;
END;
/

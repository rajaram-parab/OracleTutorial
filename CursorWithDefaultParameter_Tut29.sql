DECLARE 
v_name varchar(20);

cursor cur_employee(v_id number :=2) is select emp_name from employee where emp_id=v_id;

BEGIN
OPEN cur_employee(1);


loop
FETCH cur_employee into v_name;
EXIT WHEN cur_employee%NOTFOUND;
DBMS_OUTPUT.PUT_LINE(v_name);
end loop;
CLOSE  cur_employee;

END;

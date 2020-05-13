
DECLARE

cursor cur_employee is select emp_name,hire_date from employee where emp_id < '30';
v_emp cur_employee%rowtype;

BEGIN

open cur_employee;

loop
FETCH cur_employee into v_emp;
EXIT WHEN cur_employee%NOTFOUND;  
dbms_output.put_line(v_emp.emp_name ||' '||v_emp.hire_date);

end loop;

close cur_employee;

END;

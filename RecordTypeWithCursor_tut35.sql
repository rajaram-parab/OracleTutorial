DECLARE
cursor cur_emplyee is select emp_name,hire_date from employee where emp_id='30';

v_emp cur_emplyee%rowtype;

BEGIN

open cur_emplyee;

FETCH cur_emplyee into v_emp;

DBMS_OUTPUT.PUT_LINE(v_emp.emp_name);
DBMS_OUTPUT.PUT_LINE(v_emp.hire_date);


close cur_emplyee;

END;
DECLARE
v_emp employee%rowtype;

BEGIN

--select emp_name into v_emp from employee where emp_id='20';
select emp_name,hire_date into v_emp.emp_name,v_emp.hire_date from employee where emp_id='20';

DBMS_OUTPUT.PUT_LINE(v_emp.emp_name);
DBMS_OUTPUT.PUT_LINE(v_emp.hire_date);

END;

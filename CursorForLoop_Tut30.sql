DECLARE

cursor cur_employee is select emp_name,emp_id from employee where emp_id =1 ;  

BEGIN
for idx in cur_employee 
loop
DBMS_OUTPUT.PUT_LINE(idx.emp_name  || '---' || idx.emp_id);
end loop;
END;


DROP TABLE employee;
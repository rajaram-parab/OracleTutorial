CREATE TABLE EMPLOYEE
(
emp_id number,
emp_name varchar(20),
salary number
);


insert into EMPLOYEE
values(200,'RANI',4000);



DECLARE
var_cur sys_refcursor;

var_name EMPLOYEE.EMP_NAME%TYPE;
var_sal EMPLOYEE.SALARY%TYPE;
BEGIN

OPEN var_cur for select emp_name,salary from employee where emp_id=100;

FETCH var_cur into var_name,var_sal;

CLOSE var_cur; 

DBMS_OUTPUT.PUT_LINE('EMPLOYEE NAME '||var_name || ' SALARY '|| var_sal);

END;


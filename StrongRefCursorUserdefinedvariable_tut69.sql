CREATE TABLE EMPLOYEE
(
emp_id number,
emp_name varchar(20),
salary number
);


insert into EMPLOYEE
values(200,'RANI',4000);

--STRONG REF CURSOR WITH USER DEFINE TYPE
DECLARE
 TYPE my_rec is RECORD (
 emp_sal EMPLOYEE.SALARY%TYPE
 );
 TYPE ref_cur is REF CURSOR RETURN my_rec;
 var_cur_sal ref_cur;
 at_var EMPLOYEE.SALARY%TYPE;
    
BEGIN

open var_cur_sal for select salary from employee where emp_id=100;

fetch var_cur_sal into at_var;

close var_cur_sal;

DBMS_OUTPUT.PUT_LINE('Employee Salary is '||at_var);

END;
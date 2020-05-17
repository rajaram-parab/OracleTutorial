CREATE TABLE EMPLOYEE
(
emp_id number,
emp_name varchar(20),
salary number
);


insert into EMPLOYEE
values(200,'RANI',4000);



DECLARE
Type my_rec is record(
first_name varchar2(20),
salary EMPLOYEE.SALARY%TYPE
);

var_rec my_rec;
BEGIN
select emp_name,salary into var_rec.first_name,var_rec.salary  from employee where emp_id=100;
DBMS_OUTPUT.PUT_LINE(var_rec.first_name||'  '||var_rec.salary );

END;


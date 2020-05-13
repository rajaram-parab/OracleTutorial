create table employee 
(
emp_id number(20),
emp_name varchar2(20)
);

insert into employee
values(2,'Ram');

insert into employee
values(2,'Shyam');

insert into employee
values(2,'Ravi');


insert into employee
values(2,'Anil');

insert into employee
values(2,'Varun');


--SET SERVEROUTPUT ON;
--Cursor 
DECLARE 
v_name varchar(20);

cursor cur_employee is select emp_name from employee where emp_id='1';

BEGIN
OPEN cur_employee;


loop
FETCH cur_employee into v_name;
EXIT WHEN cur_employee%NOTFOUND;
DBMS_OUTPUT.PUT_LINE(v_name);
end loop;
CLOSE  cur_employee;

END;





--SET SERVEROUTPUT ON;
--Cursor With Parameter
DECLARE
v_name varchar2(20);
v_id number(10);

cursor cur_employee(v_p_id number) is select emp_name,emp_id from employee where emp_id = v_p_id;

BEGIN

OPEN cur_employee;

Loop
FETCH cur_employee(2) into v_name,v_id;
EXIT WHEN cur_employee%NOTFOUND;
DBMS_OUTPUT.PUT_LINE(v_name);
end loop;

CLOSE cur_employee;

END;


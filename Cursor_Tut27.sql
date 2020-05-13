create table employee 
(
emp_id number(20),
emp_name varchar2(20)
);

insert into employee
values(1,'Ram');

insert into employee
values(1,'Shyam');

insert into employee
values(1,'Ravi');


insert into employee
values(1,'Anil');

insert into employee
values(1,'Varun');


--SET SERVEROUTPUT ON;
--Cursor Demo
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




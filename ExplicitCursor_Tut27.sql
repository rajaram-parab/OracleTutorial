--How to create explicit cusrsor 

create table employee
(
        v_name varchar2(20)

);


insert into employee
values('Rohan');

insert into employee
values('Ashish');

insert into employee
values('Mayur');


set serveroutput on;
declare
v_name varchar2(20);
--Delare Cursor with select statement
cursor cur_employee is select v_name from employee;

begin
open cur_employee;
Fetch cur_employee into  v_name;
loop
DBMS_OUTPUT.PUT_LINE(v_name);
EXIT WHEN  cur_employee%NOTFOUND;
end loop;
close cur_employee;
end;



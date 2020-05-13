create table employee(
emp_id number(10),
emp_name varchar2(30)
);

insert into  employee
values(10,'Ram');

insert into  employee
values(20,'Shyam');

insert into  employee
values(30,'Sonu');

insert into  employee
values(40,'Monu');


select * from employee;


declare
v_name varchar2(20);
v_id number(10);
cursor cur_employee(v_emp_id in number) is select emp_id,emp_name from employee where emp_id=v_emp_id;

begin
open cur_employee(10);
fetch cur_employee into v_id,v_name;
DBMS_OUTPUT.PUT_LINE(v_id ||' '||v_name);
close cur_employee;

end;


declare
v_name varchar2(20);
v_id number(10);
cursor cur_employee(v_emp_id in number) is select emp_id,emp_name from employee where emp_id < v_emp_id;

begin
-- open cur_employee(10);
-- fetch cur_employee into v_id,v_name;
for  idx in cur_employee(30)
loop
DBMS_OUTPUT.PUT_LINE(idx.emp_id ||' '||idx.emp_name);
end loop;


-- close cur_employee;

end;



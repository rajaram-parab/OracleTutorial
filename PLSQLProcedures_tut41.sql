
create table employee(
emp_name varchar2(30),
emp_salary number,
dept_id number,
emp_id number
);

insert into employee values('Ram','1000',3,2);
insert into employee values('Shyam','6000',2,7);
insert into employee values('Sonu','2000',3,3);
insert into employee values('Monu','3000',1,1);

select * from employee where dept_id='3';

create or replace procedure update_emp_salary(v_dept_id number,v_raise_per number) is 
begin
update employee set emp_salary=emp_salary +(emp_salary * (v_raise_per / 100 )) where dept_id=v_dept_id;
end update_emp_salary;

execute update_emp_salary(3,5);




create or replace type nested_table is table of varchar2(20); 

--drop type nested_table ;
--drop table nested_test
create table nested_test(
name varchar2(20),
id number,
nested_tab nested_table
) nested table  nested_tab store as nested_tab_space;

select * from  nested_test;

insert into nested_test
values('xyz',1,nested_table('abc','xyz'));

insert into nested_test
values('abc',2,nested_table('mon','fri','tues'));


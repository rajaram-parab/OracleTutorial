create or replace type object_type as object(
obj_id Number,
obj_name varchar2(10)
);

create or replace type my_nt is table of object_type;
--DROP TABLE base_table
--DROP  type my_nt
--drop type object_type
create table base_table(
table_id number,
tab_ele my_nt
)Nested table tab_ele store as  my_nt_tab_ele;

insert into base_table
values(1,my_nt(object_type(1,'abc')));

select * from base_table; 

UPDATE base_table SET tab_ele = my_nt(object_type(1,'SpiderMan')) WHERE table_id = 1; 
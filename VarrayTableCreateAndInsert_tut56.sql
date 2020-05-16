set serveroutput on;

create or replace type dbobj_vry is varray (5) of NUMBER;

create table calendar
(
day_name varchar2(20),
day_date dbobj_vry
);


insert into calendar
values('SUNDAY',dbobj_vry(10,5,7,10));

select * from calendar; --SUNDAY	FCDBADMIN_PROD.DBOBJ_VRY(10,5,7,10)

select tab1.DAY_NAME,vry.column_value from calendar tab1,TABLE (tab1.day_date) vry 
--SUNDAY	10
--SUNDAY	5
--SUNDAY	7
--SUNDAY	10
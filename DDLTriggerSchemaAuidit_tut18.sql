--drop table schema_audit
create table schema_audit(
  ddl_date date,
  ddl_user varchar2(30),
  object_created varchar2(30),
  object_name varchar(30),
  ddl_operation varchar2(30)
);


create or replace trigger hr_audit_tr
after ddl on schema
begin
  Insert into schema_audit VALUES(
  sysdate,
  sys_context('USERENV','CURRENT_USER'),
  ora_dict_obj_type,
  ora_dict_obj_name,
  ora_sysevent
  );
End;
/


select * from schema_audit;
DROP TABLE rebellionRider;
create table rebellionRider(r_num number);


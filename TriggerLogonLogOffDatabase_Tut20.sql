create  table hr_event_audit
(
  event_type varchar2(20),
  logon_date date,
  logon_time varchar2(30),
  logof_date date,
  logof_time varchar(30)
);


create or replace trigger log_off_audit
before logoff on schema
begin

  insert into hr_event_audit values(
  ora_sysevent,
  NULL,
  NULL,
  SYSDATE,
  TO_CHAR(SYSDATE, 'hh24:mi:ss')
  );
  Commit;
end;


delete from hr_event_audit;
select * from hr_event_audit;




------------------------For System Level Previleges---------------------
create table db_event_audit(
  user_name varchar2(15),
  event_type varchar2(30),
  logon_date date ,
  logon_time varchar2(15),
  logof_date date ,
  logof_time varchar2(15)
);


create or replace trigger db_logof_audit
before logoff on database
begin
  insert into db_event_audit values(
  user,
  ora_sysevent,
  NULL,
  NULL,
  sysdate,
  to_char(sysdate,'hh24:mi:ss')
  );
  commit;
end;


select * from db_event_audit;
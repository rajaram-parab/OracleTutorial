create  table hr_event_audit
(
  event_type varchar2(20),
  logon_date date,
  logon_time varchar2(30),
  logof_date date,
  logof_time varchar(30)
);


create or replace trigger hr_logon_audit
after logon on schema
begin
  insert into hr_event_audit values(
  ora_sysevent,
  sysdate,
  to_char(sysdate,'hh24:mi:ss'),
  null,
  null
  );
end;

delete from hr_event_audit;
select * from hr_event_audit;
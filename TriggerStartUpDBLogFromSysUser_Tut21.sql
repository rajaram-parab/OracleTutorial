show user; -- Should be Sys

drop  table startup_audit;
create table startup_audit
(
    event_tyoe varchar2(30),
    event_date date,
    event_time varchar2(15)
);

drop  trigger tr_startup_audit;
create or replace trigger tr_startup_audit
after startup on database
Begin
  insert into startup_Audit values(
    ora_sysevent,
    sysdate,
    to_char(sysdate,'hh24:mm:ss')
  );
end;
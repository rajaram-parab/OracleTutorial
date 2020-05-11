create table sh_audit(
  new_name varchar2(30),
  old_name varchar2(30),
  user_name varchar2(30),
  entry_date varchar2(30),
  operation varchar2(30)
);

drop trigger tr_superheroes_audit;

create or replace trigger tr_superheroes_audit
before insert or update or delete on superheroes
FOR EACH ROW
ENABLE
DECLARE
v_user varchar2(30);
v_date varchar2(30);
BEGIN
select user into v_user from dual;
select to_char(sysdate,'DD/MON/YYYY HH24:MI:SS') into v_date from dual;

if INSERTING then

insert into sh_audit values(:NEW.sh_name,null,v_user,v_date,'INSERT');

elsif UPDATING then

insert into sh_audit values(:NEW.sh_name,:OLD.sh_name,v_user,v_date,'UPDATE');

elsif DELETING then 

insert into sh_audit values(null,:OLD.sh_name,v_user,v_date,'DELETE');

end if;

END;





SELECT  * FROM SH_AUDIT;
INSERT INTO SUPERHEROES VALUES('BATMAN');

UPDATE SUPERHEROES SET SH_NAME = 'TARZAN' WHERE SH_NAME='BATMAN';

DELETE FROM SUPERHEROES WHERE SH_NAME ='TARZAN';



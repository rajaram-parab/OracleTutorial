Create table superheroes (
sh_name varchar2(20)
);

--select user  from dual;
---Example 1
set serveroutput on;
create or replace  trigger bi_superhereos
before insert on superheroes
for each row
enable
declare
 v_user varchar2(20);
begin

select user into v_user from dual;
DBMS_OUTPUT.PUT_LINE('You just inserted A Line Mr. '||v_user);

end;
/


insert into superheroes values('Ironman');




set serveroutput on;
create or replace  trigger bu_superhereos
before update on superheroes
for each row
enable
declare
 v_user varchar2(20);
begin

select user into v_user from dual;
DBMS_OUTPUT.PUT_LINE('You just Updated A Line Mr. '||v_user);

end;


update superheroes set sh_name ='SUPERMAN' where sh_name ='Ironman';


set serveroutput on;

CREATE OR REPLACE TRIGGER tr_superheroes
before update on superheroes
ON EACH ROW 
ENABLE
DECLARE 
v_users varchar2(20);
BEGIN

select user from v_user from dual;
    if INSERTING then 
      DBMS_OUTPUT.PUT_LINE('Row Inserted by User ' || v_users);
--    elsif DELETING then
--      DBMS_OUTPUT.PUT_LINE('Row deleted by User ' || v_users);
--    elsif UPDATING then
--      DBMS_OUTPUT.PUT_LINE('Row Updated  by User ' || v_users);
    end;

END;



set serveroutput on;
create or replace  trigger tr_superhereos
before update or insert or delete on superheroes
for each row
enable
declare
 v_user varchar2(20);
begin

select user into v_user from dual;
if INSERTING THEN
DBMS_OUTPUT.PUT_LINE('ROW INSERTED BY Mr. '||v_user);

ELSIF UPDATING THEN
DBMS_OUTPUT.PUT_LINE('ROW UPDATED BY Mr. '||v_user);

ELSIF DELETING THEN
DBMS_OUTPUT.PUT_LINE('ROW DELETED BY Mr. '||v_user);

ELSE 
DBMS_OUTPUT.PUT_LINE(' SUPERHEROES GONE');


END IF;

--DBMS_OUTPUT.PUT_LINE('You just Updated A Line Mr. '||v_user);

end;


INSERT INTO SUPERHEROES VALUES('BATMAN');

UPDATE SUPERHEROES SET SH_NAME = 'TARZAN' WHERE SH_NAME='BATMAN';

DELETE FROM SUPERHEROES WHERE SH_NAME ='TARZAN';

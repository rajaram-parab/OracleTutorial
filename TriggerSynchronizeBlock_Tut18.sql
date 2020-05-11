create table superheroes_backup as select * from superheroes;

delete from superheroes_backup;
delete from superheroes;

select * from superheroes_backup;
select * from superheroes;

--DROP TRIGGER tr_sh_backup;
Create or replace trigger tr_sh_backup
before insert or delete or update on superheroes
for each row
enable
Declare
begin

if INSERTING then
insert into superheroes_backup values(:NEW.sh_name);
elsif UPDATING then
update superheroes_backup set sh_name = :NEW.sh_name where sh_name = :OLD.sh_name;
elsif DELETING then
delete from superheroes_backup where sh_name =:OLD.sh_name;
end if;

end;



SELECT  * FROM SUPERHEROES_BACKUP;
SELECT  * FROM SUPERHEROES;
INSERT INTO SUPERHEROES VALUES('BATMAN');

UPDATE SUPERHEROES SET SH_NAME = 'TARZAN' WHERE SH_NAME='BATMAN';

DELETE FROM SUPERHEROES WHERE SH_NAME ='TARZAN';


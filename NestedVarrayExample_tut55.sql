set serveroutput on;
declare
type inBLock_vry IS VARRAY (5) of NUmber;
vry_obj   inBLock_vry:=inBLock_vry(1,1,1,1,1);
begin
for i in 1..vry_obj.LIMIT
loop
    vry_obj(i) := 10*i;
    DBMS_OUTPUT.PUT_LINE( vry_obj(i) );
end loop;
end;


set serveroutput on;
declare
type inBLock_vry IS VARRAY (5) of NUmber;
vry_obj   inBLock_vry:=inBLock_vry();
begin
vry_obj.EXTEND(5);
for i in 1..vry_obj.LIMIT
loop
    vry_obj(i) := 10*i;
    DBMS_OUTPUT.PUT_LINE( vry_obj(i) );
end loop;
end;


set serveroutput on;
declare
type inBLock_vry IS VARRAY (5) of NUmber;
vry_obj   inBLock_vry:=inBLock_vry();
begin

for i in 1..vry_obj.LIMIT
loop
    vry_obj.EXTEND;
    vry_obj(i) := 10*i;
    DBMS_OUTPUT.PUT_LINE( vry_obj(i) );
end loop;
end;
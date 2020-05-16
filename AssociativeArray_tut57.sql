set serveroutput on;
declare 
Type varry_type is table of number
index by varchar2(20);
var_vry varry_type;
begin

var_vry('Oracletut1'):=16563;
var_vry('Oracletut5'):=34645;

var_vry('Oracletut7'):=19029;

dbms_output.put_line(var_vry('Oracletut5'));

end;


set serveroutput on;
declare 
Type varry_type is table of number
index by varchar2(20);
var_vry varry_type;
flag varchar2(20);
begin

var_vry('Oracletut1'):=16563;
var_vry('Oracletut5'):=34645;

var_vry('Oracletut7'):=19029;
flag :=var_vry.FIRST;
while flag is not null
loop
dbms_output.put_line('Key --> '|| flag ||' Value --> '||var_vry(flag));
flag :=var_vry.NEXT(flag);
end loop;
end;
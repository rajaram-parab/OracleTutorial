--COLLECTION METHOD EXISTS
declare 
type nested_table is  table of varchar2(20);
var_nt nested_table := nested_table('SUPERMEN','BATMEN','WONDERWOMAN');
BEGIN

if(var_nt.EXISTS(4)) then
dbms_output.put_line('Yes there is values exits');
else
dbms_output.put_line('No there is no values exits');
end if;
END;


declare 
type nested_table is  table of varchar2(20);
var_nt nested_table := nested_table('SUPERMEN','BATMEN','WONDERWOMAN');
BEGIN

if(var_nt.EXISTS(4)) then
dbms_output.put_line('Yes there is values exits '|| var_nt(4));
else
var_nt.EXTEND;
var_nt(4):='IRONMEN';
end if;
dbms_output.put_line('Value inserted at index 4 is'|| var_nt(4));
END;
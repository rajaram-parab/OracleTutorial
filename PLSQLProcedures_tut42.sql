
create or replace procedure pr_diplayname is
var_name varchar2(20) := 'Raja';
var_off_name varchar2(30) :='Oracle';

BEGIN

dbms_output.put_line('Hello My name is ' ||var_name|| ' I like working on '|| var_off_name);

END pr_diplayname; 


set serveroutput on ;
exec pr_diplayname;

execute pr_diplayname;
CREATE TABLE EMPLOYEE
(
emp_id number,
emp_name varchar(20),
salary number
);


insert into EMPLOYEE
values(100,'RAM',5000);

--Strong ref cursor 
DECLARE
type ref_cur is REF CURSOR RETURN EMPLOYEE%ROWTYPE;
var_cur ref_cur;
rec_var EMPLOYEE%ROWTYPE;

BEGIN
open var_cur for select * from  EMPLOYEE where emp_id=100;
FETCH var_cur into rec_var;

close var_cur;

DBMS_OUTPUT.PUT_LINE('Employee Name '|| rec_var.emp_name ||' has salary '||rec_var.salary);

END;
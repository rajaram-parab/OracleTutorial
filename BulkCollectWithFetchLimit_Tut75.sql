declare
cursor exp_cur is 
Select MB_role_ID  FROM BULK_USER_REG;

Type nt_fname is table OF varchar2(20);
fname nt_fname;
BEGIN
open exp_cur;
    FETCH exp_cur BULK COLLECT INTO fname limit 10;
close exp_cur;

for idx in fname.FIRST..fname.LAST 
loop 
DBMS_OUTPUT.put_line(idx || ' : ' || fname(idx)); 
end loop;
END;
/
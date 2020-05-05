DECLARE
CURSOR exp_cur is 
SELECT MB_role_ID  FROM BULK_USER_REG;
Type nt_fname is table of VARCHAR2(20);
fname nt_fname;
BEGIN
open exp_cur;
loop 
    FETCH exp_cur BULK COLLECT INTO fname;
    EXIT WHEN fname.COUNT =0;
    for idx in fname.FIRST..fname.LAST
    loop
      DBMS_OUTPUT.put_line(idx || ' : ' || fname(idx));    
    end loop;
end loop;
close exp_cur;
END;
/
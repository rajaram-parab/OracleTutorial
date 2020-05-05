 DECLARE 
 Type My_Array  is table of number index by  pls_integer;
 cal_var My_Array;
 tot_rec Number;
 BEGIN
 for i in 1..10 loop
 cal_var(i) := i*9;
 end loop;
 
 forall i in 1..10
 insert into test1
 values(cal_var(i));
 
 select count(*) into tot_rec  from test1;
 DBMS_OUTPUT.PUT_LINE('The Total record in table test1 '||tot_rec);
 
 END;
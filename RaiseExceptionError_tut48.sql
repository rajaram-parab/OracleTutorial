-- Accept var_age Number prompt 'Wha is your age?';
declare

age Number := 25;

begin 

if age<18 then 
    RAISE_APPLICATION_ERROR(-20008,'You should be 18 or above for drinks!');
    --Custom Error Number Range from -20000 to -20999
end if;

dbms_output.put_line('Sure, What would you like to have?');

 Exception when others  then 
    DBMS_OUTPUT.PUT_LINE(SQLERRM);

end;
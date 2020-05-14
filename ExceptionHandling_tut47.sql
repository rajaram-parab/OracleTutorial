    Set serveroutput on;
    declare 
    v_divident number := 24;
    v_divisor number :=0;
    v_result number ;
    ex_ZeroDivisor Exception;
    begin
    
    if v_divisor =0 then 
    Raise  ex_ZeroDivisor;
    end if;
    
    v_result :=v_divident/v_divisor;
    dbms_output.put_line(v_result);
    
    end;
    
    
        
    Set serveroutput on;
    declare 
    v_divident number := 24;
    v_divisor number :=0;
    v_result number ;
    ex_ZeroDivisor Exception;
    begin
    
    if v_divisor =0 then 
    Raise  ex_ZeroDivisor;
    end if;
    
    v_result :=v_divident/v_divisor;
    dbms_output.put_line(v_result);
    
    
    Exception when ex_ZeroDivisor then
    dbms_output.put_line('Error Error --Divsior is Zero');    
    
    end;
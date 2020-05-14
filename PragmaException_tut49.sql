
declare
v_age Number :=17;
ex_age Exception;
Pragma Exception_INIT(ex_age,-20009);

begin

if v_age < 18 then

-- Raise ex_age;
RAISE_APPLICATION_ERROR(-20009,'You should be atleast 18 to Drink!');

end if;

DBMS_OUTPUT.PUT_LINE('Hello, What can i do for you server');

Exception when ex_age then
DBMS_OUTPUT.PUT_LINE(SQLERRM);
end;





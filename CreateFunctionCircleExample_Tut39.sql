create or replace function areaofcircle( radius number)
return number 
is
pi constant number(7,3) := 3.14 ;
area number(7,3) ;
begin

--Area of Circle =pi * r * r
area := pi * radius * radius;
return area;

end;


begin
dbms_output.put_line('Area of Circle'||areaofcircle(7));
end;

declare
area number(7,3);
begin
area :=areaofcircle(5);
dbms_output.put_line('Area of Circle '||area);
end;


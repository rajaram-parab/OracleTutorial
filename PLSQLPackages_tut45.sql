create or replace package package_tut is
    function prnt_string return varchar2;
    procedure pr_insert_data(value1 varchar2,value2 varchar2);
    end package_tut;
    
    
create or replace package body package_tut is
        
    function  prnt_string return varchar2 is
     begin
     return 'Package Tutorial';
     end prnt_string;
     
     Procedure pr_insert_data(value1 varchar2,value2 varchar2) is
     begin
        insert into employee(name,place) values(value1,value2);
     end;
     
    end  package_tut;
    
    create table employee(
    name varchar2(20),
    place varchar2(20)
    );
    
    set serveroutput on;
    begin
    dbms_output.put_line(package_tut.prnt_string());
    end;
    
    select * from employee
    
    begin
    package_tut.pr_insert_data('Shyam','Bombay');
    end;
    
    

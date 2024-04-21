-- Package to activate server output
SET SERVEROUTPUT ON
DECLARE 
    RATE CONSTANT NUMBER:=10; -- Constant must be initilized
    RATE_NN NUMBER NOT NULL:=11; -- This a variable that explicit can not be null, but the value can be changed during runtime.
BEGIN
    
    -- The constant can not be modified
    -- NUMBER:=11; -- Throws Error;
    
    dbms_output.put_line(RATE);
    dbms_output.put_line(RATE_NN);
    RATE_NN:=13;
    dbms_output.put_line(RATE_NN);
    

END;
-- Finalza PL/SQL Codigo
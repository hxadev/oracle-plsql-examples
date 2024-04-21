-- Package to activate server output
SET SERVEROUTPUT ON
DECLARE 
    FULL_NAME VARCHAR2(20);
    LAST_NAME VARCHAR(4);
BEGIN
    -- Initialize the variable
    FULL_NAME:='JHON';
    LAST_NAME:='DOEE';

    -- DBMS Output to print text and elements in screen
    dbms_output.put_line(FULL_NAME);
    dbms_output.put_line(LAST_NAME);
    dbms_output.put_line(FULL_NAME||' '||LAST_NAME);
    

END;
-- Finalza PL/SQL Codigo
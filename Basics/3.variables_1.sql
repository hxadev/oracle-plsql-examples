-- Package to activate server output
SET SERVEROUTPUT ON

-- Declare variables <Variable_name> <Variable_type>
DECLARE 
    NAME VARCHAR2(100);
    LAST_NAME VARCHAR2(100);
BEGIN
    -- Initialize the variable
    NAME:='JHON';
    LAST_NAME:='DOE';

    -- DBMS Output to print text and elements in screen
    DBMS_OUTPUT.PUT_LINE(NAME);
    dbms_output.put_line(LAST_NAME);
    dbms_output.put_line(name||' '||last_name);
    

END;
-- Finalza PL/SQL Codigo
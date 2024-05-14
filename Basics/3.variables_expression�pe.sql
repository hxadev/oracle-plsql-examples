-- %TYPE Variable
-- Set automatically a the column type to an specified variable
-- VARIABLE_NAME <SOURCE_TYPE>%Type
SET SERVEROUTPUT ON

DECLARE
    X NUMBER;
    Z X%Type;
    EMPLE EMPLOYEES.SALARY%TYPE:='ABC';
BEGIN
    
    DBMS_OUTPUT.PUT_LINE(EMPLE);
END;
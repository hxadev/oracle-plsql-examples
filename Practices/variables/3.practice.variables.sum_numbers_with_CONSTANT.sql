-- PRACTICE VARIABLES 3. Create two variables, set values and create an extra constant with a default value, and sum the values, what is the result of the sum?


SET SERVEROUTPUT ON

DECLARE
    NUM_1 NUMBER;
    NUM_2 NUMBER;
    NUM_3 CONSTANT NUMBER:=2;
    RES NUMBER;
BEGIN
    NUM_1:=10;
    NUM_2:=10;
    RES:=NUM_1+NUM_2+NUM_3;
    
    DBMS_OUTPUT.PUT_LINE(''||RES);
END;
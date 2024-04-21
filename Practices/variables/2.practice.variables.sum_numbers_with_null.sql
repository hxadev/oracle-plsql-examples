-- PRACTICE VARIABLES 2. Create two variables and set one as null, and sum the values, what is the result of the sum?


SET SERVEROUTPUT ON

DECLARE
    NUM_1 NUMBER;
    NUM_2 NUMBER;
    RES NUMBER;
BEGIN
    NUM_1:=10;
    NUM_2:=null;
    RES:=NUM_1+NUM_2;
    
    DBMS_OUTPUT.PUT_LINE(''||RES);
END;
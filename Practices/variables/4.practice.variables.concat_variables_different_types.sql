-- PRACTICE VARIABLES 4. Create an PL/SQL anonym block that contains a VARCHAR2 variable with our name, another one NUMERIC with our age, and a third one with our birth of date.
-- Display those in separated instructions and after of that try concat the variables, it is possible?


SET SERVEROUTPUT ON

DECLARE
    NAME VARCHAR2(100);
    AGE NUMBER;
    BOD DATE;
BEGIN
    NAME:='JHON DOE MAN';
    AGE:=30;
    BOD:='27-02-1982';
    
    DBMS_OUTPUT.PUT_LINE(NAME);
    DBMS_OUTPUT.PUT_LINE(AGE);
    DBMS_OUTPUT.PUT_LINE(BOD);
    
    DBMS_OUTPUT.PUT_LINE(NAME||' '||AGE||' ' ||BOD);
END;
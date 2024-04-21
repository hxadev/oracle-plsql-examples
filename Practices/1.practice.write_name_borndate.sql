-- Practice 1. Write your name, lastname and borndate in the screen using PLSQL

-- Package to activate server output
SET SERVEROUTPUT ON

-- INICIA PL/SQL Codigo
BEGIN

    -- DBMS Output to print text and elements in screen
    DBMS_OUTPUT.PUT_LINE('Hi my name is Jhon Doe');
    DBMS_OUTPUT.PUT_LINE('Hi'||' '||'WORLD');
    DBMS_OUTPUT.PUT_LINE('i borned at 27/02/1996');
    DBMS_OUTPUT.PUT_LINE('Keep Rocking!! ');
    
    

END;
-- Finalza PL/SQL Codigo
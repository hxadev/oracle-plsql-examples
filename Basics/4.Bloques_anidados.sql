/***
**
** BLOQUES ANIDADOS
**
***/

SET SERVEROUTPUT ON

BEGIN
    DBMS_OUTPUT.PUT_LINE('- PRIMER BLOQUE');
    
    -------------------
    DECLARE
        X NUMBER :=10;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('-- SEGUNDO BLOQUE');
        DBMS_OUTPUT.PUT_LINE(X);
        
        BEGIN
            DBMS_OUTPUT.PUT_LINE('--- TERCER BLOQUE');
        END;
    END;
    -------------------
END;
/*
    ESTRUCTURA DE CONTROL CASE
    
    SEARCHED CASE
    
    
*/

/*
   BONO>1000 -> EXCELENTE
   BONO>700 AND BONO<100 -> MUY BIEN HECHO
   BONO>500 AND BONO<700 -> BIEN HECHO
   BONO>250 AND BONO>500 -> PUEDES ESFORZARTE MÁS.
   BONO<250 --> REFORMULA TU FORMA DE TRABAJAR.
    
*/

SET SERVEROUTPUT ON;

DECLARE
    BONO NUMBER;
BEGIN
    BONO:='1200';
    
    CASE  
        WHEN BONO>=1000 THEN DBMS_OUTPUT.PUT_LINE('EXCELENTE');
        WHEN BONO>=700 AND BONO<1000 THEN DBMS_OUTPUT.PUT_LINE('MUY BIEN HECHO!');
        WHEN BONO>=500 AND BONO<700 THEN DBMS_OUTPUT.PUT_LINE('BIEN HECHO!');
        WHEN BONO>=250 AND BONO<500 THEN DBMS_OUTPUT.PUT_LINE('PUEDES ESFORZARTE MÁS!');
        WHEN BONO<250 THEN DBMS_OUTPUT.PUT_LINE('REFORMULA TU MANERA DE TRABAJAR!');
        ELSE DBMS_OUTPUT.PUT_LINE('ERROR EN EL FORMATO DEL BONO!');
    END CASE;
END;
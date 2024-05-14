/*
    Practica 3. BUCLES
    Realiza un control de ciclo mediante centinela, si en el texto recorrido se encuentra el caracter centinela, se debera de romper el ciclo
    
    TEXTO:= 'ALFONXSO';
    CENTINELA :='X';
    
    RESULTADO :='OS';
*/

DECLARE
    TEXTO VARCHAR2(100):='ANXaasAA';
    CENTINEL CHAR(1):='X';
    i INTEGER;
    RESULTADO VARCHAR2(100);
BEGIN
    i:=LENGTH(TEXTO);
    WHILE i>0 LOOP
    
        RESULTADO:=RESULTADO||SUBSTR(TEXTO,i,1);
        i:=i-1;
        
        exit when SUBSTR(TEXTO,i,1)='X';
        
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE(RESULTADO);
    
    IF RESULTADO=TEXTO THEN
        dbms_output.put_line('Es palindromo');
    END IF;
END;

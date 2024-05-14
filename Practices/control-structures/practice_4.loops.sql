/*
    Practica 4. BUCLES
        Se debera crear una variable NOMBRE de tipo VARCHAR2(100);
        Debemos ocultar los caracteres del texto mediante una mascara de *
        Por ejemplo: 
        NOMBRE:='ALFONSO';
        
        Resultado ******* 
*/

DECLARE
    NOMBRE VARCHAR2(100):='HOLA';
    RESULTADO VARCHAR2(100);
BEGIN
    FOR n in 1..LENGTH(NOMBRE) LOOP
        RESULTADO:=RESULTADO||'*';
    
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE(RESULTADO);
END;


/*
    1233-1233-1233-4321
    1233123312334321
    --> XXXXXXXXXXXX4321
*/


DECLARE
    N_TARJETA VARCHAR(16):='1233123312334321';
    MASKED_TARJETA VARCHAR(16);
BEGIN
    FOR i IN 1..LENGTH(N_TARJETA) LOOP
        
        MASKED_TARJETA:=MASKED_TARJETA||SUBSTR(N_TARJETA,i,1);
        
        
        
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE(MASKED_TARJETA);
    
END;
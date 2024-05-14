/*
    Practica 1. Bucles
    
    Crear la tabla de multiplicar del 1 al 10 con los tres tipos de bucles.
*/


-- APPROACH LOOP
DECLARE
    multiplicando INTEGER:=1;
    multiplicador INTEGER:=1;
    producto INTEGER;
BEGIN
    <<parent>>
    LOOP
      
      multiplicador:=1;
      DBMS_OUTPUT.PUT_LINE('TABLA - '||multiplicando);
      
      <<child>>
      LOOP
        EXIT parent when multiplicando>10;  
        producto:=multiplicando*multiplicador;
        
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(multiplicando)||'*'||TO_CHAR(multiplicador)||'='||TO_CHAR(producto));
        
        multiplicador:=multiplicador+1;
        exit child when multiplicador>10;
      END LOOP child;
      
      multiplicando:=multiplicando+1;
      
      
    END LOOP parent;
END;



-- APPROACH FOR LOOP

DECLARE
    producto INTEGER;
BEGIN
    for multiplicando in 1..10 loop
        DBMS_OUTPUT.PUT_LINE('TABLA - '||multiplicando);
        
        for multiplicador in 1..10 loop
            producto:=multiplicando*multiplicador;
            DBMS_OUTPUT.PUT_LINE(TO_CHAR(multiplicando)||'*'||TO_CHAR(multiplicador)||'='||TO_CHAR(producto));
        end loop;
    end loop;
END;

-- APPROACH WHILE LOOP

DECLARE
    multiplicando INTEGER:=1;
    multiplicador INTEGER:=1;
    producto INTEGER;
BEGIN

   WHILE multiplicando<11 LOOP
   multiplicador:=1;
    DBMS_OUTPUT.PUT_LINE('TABLA - '||multiplicando);
    
    WHILE multiplicador<11 LOOP
        producto:=multiplicando*multiplicador;
        
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(multiplicando)||'*'||TO_CHAR(multiplicador)||'='||TO_CHAR(producto));
        multiplicador:=multiplicador+1;
    END LOOP;
    
    multiplicando:=1+multiplicando;
   END LOOP;
    
END;
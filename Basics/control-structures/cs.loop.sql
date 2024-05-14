/*

    BUCLE LOOP

*/

DECLARE
    X NUMBER:=1;
    
BEGIN
    
    LOOP -- <- INICIA LOOP 
    
        --- .... INSTRUCCIONES
        
        IF MOD(X,2)=0 THEN
            DBMS_OUTPUT.PUT_LINE(X||' ES PAR ');
        ELSE
            DBMS_OUTPUT.PUT_LINE(X||' ES IMPAR ');
        END IF;
        
        
        X:=X+1; -- 1 -> 2 -> 3 -> 4 -> 5......
        
        EXIT WHEN X=101;
        
    
    END LOOP;  -- <-FIN LOOP
    
END;


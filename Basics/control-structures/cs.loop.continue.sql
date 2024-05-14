DECLARE
    X NUMBER :=0;
BEGIN
    LOOP
            DBMS_OUTPUT.PUT_LINE('X= '||TO_CHAR(X));
        X:=X+1;
        
        CONTINUE WHEN X<110;
            DBMS_OUTPUT.PUT_LINE('DESPUES X= '||TO_CHAR(X));
        EXIT WHEN X=115;
    END LOOP;
END;
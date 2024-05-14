/*
    Dado un texto ingresado, crear una version encriptada de esa contraseña.
    Si es un numero PAR, num+100, si es impar num+200
    
    {num1}.{num2}.{num3}.{numn}....
*/

DECLARE
    passwd VARCHAR2(15):='AaaA';
    i INTEGER;
    len INTEGER;
    letra CHAR(1);
    valor_ascii INTEGER;
    passwd_final VARCHAR(100);
BEGIN

    len:=LENGTH(passwd); -- Limite
    
    -- > Obtiene el caracter de el indice i de la contraseña 
    -- dbms_output.put_line(SUBSTR(passwd,i,1));
    -- > obtiene el valor ascii de caracter dbms_output.put_line(ASCII(SUBSTR(passwd,i,1)));
    
    i:=0;

    LOOP
        letra:=SUBSTR(passwd,i,1);
        valor_ascii:=ASCII(letra);
        
        IF MOD(valor_ascii,2)=0 THEN
            valor_ascii:=valor_ascii+100;
        ELSE
            valor_ascii:=valor_ascii+200;
        END IF;
        
        IF i<len THEN
            passwd_final:=passwd_final||valor_ascii||'.';
        else
            passwd_final:=passwd_final||valor_ascii;
        end if;
        
        i:=i+1;
        
        exit when i=len+1;
        
    END LOOP;
    
    --UPDATE users SET password=passwd_final WHERE usr_id=1;

END;
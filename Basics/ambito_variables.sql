SET SERVEROUTPUT ON

/***
**
** AMBITO DE VARIABLES
**
***/


DECLARE
    x            NUMBER := 10;
    year_dob     NUMBER;
    current_year NUMBER;
    z            NUMBER := 100;
BEGIN
    year_dob := 1996;
    current_year := extract(YEAR FROM sysdate);
    dbms_output.put_line('X:= ' || x);
    dbms_output.put_line('Z:= ' || z);
    DECLARE
        x   NUMBER := 20;
        age NUMBER;
    BEGIN
        age := current_year - year_dob;
        dbms_output.put_line('TOTAL AGE:= ' || age);
        dbms_output.put_line('X:= ' || x);
        dbms_output.put_line('Z:= ' || z);
        
        DECLARE
            primer_nombre VARCHAR2(100):='Alfonso';
            primer_apellido VARCHAR(100):='Hernandez';
            segundo_apellido VARCHAR2(100):='Xochipa';
            nombre_completo primer_nombre%TYPE;
        BEGIN
            nombre_completo:=primer_nombre||' ' || primer_apellido|| ' ' || segundo_apellido;
            dbms_output.put_line('El participante es: '||nombre_completo);
            dbms_output.put_line(nombre_completo||' tiene '||age||' años');
        END;
        
    END;

    --dbms_output.put_line('TOTAL AGE:= ' || age);
    dbms_output.put_line('YEAR FROM DATE OF BIRTH:= ' || year_dob);
    dbms_output.put_line('CURRENT YEAR:= ' || current_year);

END;
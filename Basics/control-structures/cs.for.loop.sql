/*
    FOR LOOP
*/

DECLARE
    nombre VARCHAR2(50):='RUBY';
    len integer;
BEGIN
    FOR i IN 1..LENGTH(nombre) LOOP
        dbms_output.put_line(substr(nombre,i,1));
    END LOOP;
END;
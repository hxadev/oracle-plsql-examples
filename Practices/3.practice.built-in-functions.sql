/**
*
* Crea un bloque PL/SQL con tres variables VARCHAR2:
* o Nombre
* o apellido1
* o apellido2
* • Debes visualizar las iniciales separadas por puntos.
* • Además siempre en mayúscula
* • Por ejemplo alberto pérez García debería aparecer--> A.P.G
**/

SET SERVEROUTPUT ON;

DECLARE
    nombre VARCHAR2(100):='Jhon';
    apellido1 nombre%type:='Gutierrez';
    apellido2 apellido1%type:='Xochipa';
    iniciales VARCHAR2(5);
    inicial1 VARCHAR2(1);
    inicial2 VARCHAR2(1);
    inicial3 VARCHAR2(1);
BEGIN
    iniciales:=substr(nombre,0,1)||'.'||substr(apellido1,0,1)||'.'||substr(apellido2,0,1);
    dbms_output.put_line(iniciales);
    
END;

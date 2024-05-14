---Estructura de control IF

SET SERVEROUTPUT ON

DECLARE
    primerNombre VARCHAR2(100):='ALFONSO';
    anioNacimiento INT:=2020;
    anioActual INT:=2024;
    edad INT;
BEGIN
    edad:=anioActual-anioNacimiento;
    
    if edad>=18 THEN
        dbms_output.put_line('Mayor de edad');
    else 
        dbms_output.put_line('Menor de edad');
    end if;
    
    
END;




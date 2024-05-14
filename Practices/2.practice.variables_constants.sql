/**

    PRACTICA VARIABLES , CONSTANTES
    Queremos calcular el impuesto de un producto.
    
    - El impuesto será del 21%. Debemos declararlo en una constante.
    - Creamos una variable de tipo number(5,2) para poner el precio del producto.
    - Creamos otra variable para el resultado. Debemos indicar que es el mismo tipo que la anterior.
    - Hacemos el calculo e imprimimos en pantalla.
**/

SET SERVEROUTPUT ON;

DECLARE
    impuesto NUMBER(5):=21;
    precio NUMBER(10,2);
    resultado precio%TYPE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('-- CALCULO DE IMPUESTO --');
    precio:=1210;
    
    resultado:=precio*impuesto/100;
    
    DBMS_OUTPUT.PUT_LINE('El resultado es: '||resultado);
END;
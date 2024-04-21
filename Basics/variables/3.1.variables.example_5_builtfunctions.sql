-- Package to activate server output
SET SERVEROUTPUT ON
DECLARE 
    FULL_NAME VARCHAR2(100); -- REQUIRE EXPLICIT LENGTH DECLARATION 
    FIRST_LAST_NAME VARCHAR(11);
    SECOND_LAST_NAME NVARCHAR2(10);
    ACTIVE CHAR(3); -- DOES NOT REQUIRE EXPLICIT LENGTH DECLARATION JUST FOR 1 CHARACTER, IF IT LENGTH IS MORE THAN 2 THEN IT NEED AN EXPLICIT LENGTH DECLARATION
    CONTRACT CLOB; -- DOES NOT REQUIRE EXPLICIT LENGTH DECLARATION, THE LENGTH IS DETERMINED BY ORACLE DATABASE BASED IN THE VALUE SIZE.
BEGIN
    -- Initialize the variable
    FULL_NAME:='JHON';
    FIRST_LAST_NAME:='Hernándezz';
    SECOND_LAST_NAME:='Rojáno';
    ACTIVE:='YES';
    
    CONTRACT:='Finally, to declare a character large object, use the CLOB data type. You do not specify a maximum length; the length is determined automatically by Oracle Database and is based on the database block size. Here is an example:';

    -- DBMS Output to print text and elements in screen
    dbms_output.put_line(FULL_NAME);
    dbms_output.put_line(FIRST_LAST_NAME);
    dbms_output.put_line(SECOND_LAST_NAME);
    dbms_output.put_line(FULL_NAME||' '||CONCAT(CONCAT(FIRST_LAST_NAME,' '),SECOND_LAST_NAME));  -- TO CONCATENATE TWO STRINGS USE CONCAT(PARAM1, PARAM2) function, or use || to concat more than three strings
    dbms_output.put_line('IS ACTIVE: '||ACTIVE);
    dbms_output.put_line(CONTRACT);
    

END;
-- Finalza PL/SQL Codigo
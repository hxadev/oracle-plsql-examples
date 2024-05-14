DECLARE
	s PLS_INTEGER:=0;
	i PLS_INTEGER:=0;
	j PLS_INTEGER;
BEGIN
	<<parent>> 
	LOOP
		i:=i+1; -- i=1, i=2
		j:=100; -- j=100, j=100
		DBMS_OUTPUT.PUT_LINE('Parent: '||i); -- Parent: 1,Parent: 2
		
		<<child>>
		LOOP
			EXIT parent WHEN i>3;
            dbms_output.put_line('child: '||j); -- child: 100 child: 101 child: 102 
			j:=j+1;
			EXIT child when j>105;
		END LOOP child;
	END LOOP parent;
    dbms_output.put_line('FINISH!!');
END;
DECLARE
	num1 INTEGER:=&sv_num1;
	num2 INTEGER:=&sv_num2;
	num3 INTEGER:=&sv_num2;	
	largest NUMBER;
	smallest NUMBER;
BEGIN
	IF num1>=num2 THEN
	largest:=num1;		
	ELSE 
	largest:=num2;
	END IF;
	IF largest<num3 THEN
	largest:=num3;
	END IF;
	DBMS_OUTPUT.PUT_LINE('Largest:'||largest);
	
	IF num1<=num2 THEN
	smallest:=num1;		
	ELSE 
	smallest:=num2;
	END IF;
	IF smallest>num3 THEN
	smallest:=num3;
	END IF;
	DBMS_OUTPUT.PUT_LINE('smallest:'||smallest);
END;

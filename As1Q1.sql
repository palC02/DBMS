DECLARE
	num1 INTEGER:=&sv_num1;
	num2 INTEGER:=&sv_num2;
	v_result NUMBER;
BEGIN
	IF num2!=0 THEN
	v_result:=num1/num2;
	DBMS_OUTPUT.PUT_LINE('DIVISION '||v_result);
	 
	v_result:=MOD(num1,num2);
	DBMS_OUTPUT.PUT_LINE('MODULUS '||v_result);
	END IF;
	
	v_result:=num1*num2;
	DBMS_OUTPUT.PUT_LINE('PRODUCT '||v_result);
	
	v_result:=num1+num2;
	DBMS_OUTPUT.PUT_LINE('SUM '||v_result);
	 
	v_result:=num1-num2;
	DBMS_OUTPUT.PUT_LINE('DIFFERENCE '||v_result);
	
END;

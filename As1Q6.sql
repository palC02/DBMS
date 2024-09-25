DECLARE
	s NUMBER(10,7):=1;
	n NUMBER(3):=&n;
	i NUMBER(5):=1;
	p NUMBER(10):=1;
	
BEGIN
	
	for i in 1..n loop
		p:=p*i;
		s:=s+(1/p);
	end loop;
	
	dbms_output.put_line('Sum= '||s);
END;
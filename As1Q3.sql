DECLARE
	s NUMBER(10):=0;
	n NUMBER(5):=&n;
	i NUMBER(5):=1;
	
BEGIN
	for i in 1..n loop
		s:=s+i;
	end loop;
	dbms_output.put_line('Sum= '||s);
END;
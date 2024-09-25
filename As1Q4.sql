DECLARE
	s NUMBER(10):=0;
	n NUMBER(5):=&n;
	i NUMBER(5):=1;
	j NUMBER(5):=1;
	
BEGIN
	for j in 1..n loop
		for i in 1..j loop
			s:=s+i;
		end loop;
	end loop;
	dbms_output.put_line('Sum= '||s);
END;
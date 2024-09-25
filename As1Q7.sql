DECLARE
	s NUMBER(20):=0;
	n NUMBER(10):=&n;
	k NUMBER(10);
	r NUMBER(10):=0;
	
BEGIN
	k:=n;
	while k>0 loop
		r:=MOD(k,10);
		k:=TRUNC(k/10);
		s:=s+r;
	end loop;	
	dbms_output.put_line('Sum= '||s);
END;
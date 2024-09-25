DECLARE
	n NUMBER(5):=&n;
	f NUMBER(5);
	s NUMBER(5);
	t NUMBER(5);
BEGIN
	f:=0;
	s:=1;
	t:=f+s;
	while t<n loop
		if n>2000 then
			dbms_output.put_line('invalid input');
			EXIT;
		end if;
		dbms_output.put_line(t);
		f:=s;
		s:=t;
		t:=f+s;		
		
	end loop;
	
END;
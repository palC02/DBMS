DECLARE
	n NUMBER(5):=&n;
	i number(5):=1;
	j number(5):=1;
	k number(5):=1;
BEGIN
	for i in 1..n loop
		for j in 1..i loop
			dbms_output.put(k||' ');
			k:=k+1;
		end loop;
	dbms_output.put_line('');
	end loop;
END;		
DECLARE
	type myarray is varray(5) of number(3);
	a myarray;	
	i number(2);
	j number(2);
	x1 number(3):=&x1;
	x2 number(3):=&x2;
	x3 number(3):=&x3;
	x4 number(3):=&x4;
	x5 number(3):=&x5;	
	freq number(2);
	fo number(2);
BEGIN	
	a:=myarray(x1,x2,x3,x4,x5);
	for i in 1..5 loop	
		freq:=0;
		fo:=6;
		for j in 1..5 loop
			if a(i)=a(j) then
				freq:=freq+1;
				if freq=1 then
					fo:=j;
				end if;
			end if;
			
		end loop;
		if i<=fo then
			dbms_output.put_line(a(i)||' occurs '||freq||' time(s)');
		end if;
	end loop;
			
	
END; 
DECLARE
	type myarray is varray(5) of number(3);
	a myarray;
	s number(4):=0;
	av number(6,2);
	big number(3);
	sd number(10,6);
	i number(2);
	x1 number(3):=&x1;
	x2 number(3):=&x2;
	x3 number(3):=&x3;
	x4 number(3):=&x4;
	x5 number(3):=&x5;	
	n number(2):=5;
BEGIN	
	sd:=0;
	a:=myarray(x1,x2,x3,x4,x5);--array starts from 1
	for i in 1..n loop
		s:=s+a(i);
	end loop;
	av:=s/n;
	big:=a(1);
	for i in 2..n loop
		if a(i)>big then
			big:=a(i);
		end if;
	end loop;
	for i in 1..n loop
		sd:=sd+(a(i)-av)**2;
	end loop;
	sd:=sqrt(sd/n);		
	dbms_output.put_line('Sum:'||s||chr(10)||'Average:'||av||chr(10)||'Biggest:'||big||chr(10)||'Standard deviation:'||sd);
	
END; 
DECLARE
	type myarray is varray(10) of number(3);
	a myarray;
	b myarray;--aux array
	temp number(3);
	i number(2);
	n number(2);
	p number(2);
	/*low number(2);
	high number(2);
	*/
	
	
BEGIN	
	/*Keeping the positive numbers in the front and the negative numbers at the end. we keep the zeroes in the middle*/
	n:=10;
	p:=1;
	a:=myarray(10,-20,30,-40,50,-60,-70,80,-90,100);
	b:=myarray(0,0,0,0,0,0,0,0,0,0);
	for i in 1..10 loop
		if a(i)>0 then	
			b(p):=a(i);
			p:=p+1;
		end if;
		if a(11-i)<0 then	
			b(n):=a(11-i);
			n:=n-1;
		end if;

	end loop;
	
	dbms_output.put_line('Final array:');
	for i in 1..10 loop
		dbms_output.put(b(i)||'  ');
	end loop;
	dbms_output.put_line('');
	
	/*ALGORITHM 2 :  ALTERS THE ORDER OF POSITIVE AND NEGATIVE ELEMENTS THEMSELVES NO OUTPUT
	
	p:=0;
	for j in 1..10 loop
		if a(j)>0 then
			p:=p+1;
			temp:=a(j);
			a(j):=a(p);
			a(p):=temp;
		end if;
	end loop;
	dbms_output.put_line('Final array:');
	for i in 1..10 loop
		dbms_output.put(a(i)||'  ');
	end loop;
	dbms_output.put_line('');

	ALGORITHM 3
	CHANGES THE ORDER OF POSITIVE AND NEGATIVE ELEMENTS
	low:=1;
	high:=10;
	while low<high loop
		while a(low)>0 and low<high loop
			low:=low+1;
		end loop;
		while a(high)<0 and low<high loop
			high:=high-1;
		end loop;
		if low < high then
			temp:=a(low);
			a(low):=a(high);
			a(high):=temp;
		end if;
	end loop;
	low:=1;
	while low<11 loop
		dbms_output.put_line(a(low));
		low:=low+1;
	end loop;			    
	*/
		
END; 
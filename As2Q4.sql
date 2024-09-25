DECLARE
	type myarray is varray(5) of number(3);
	a myarray;
	x1 number(3):=&x1;
	x2 number(3):=&x2;
	x3 number(3):=&x3;
	x4 number(3):=&x4;
	x5 number(3):=&x5;
	k number(2);
	j number(2);
	l number(2);
	t number(2);
	cnt number(3);
	cnt2 number(3);

	flag number(1);
	temp number(3);
BEGIN
	cnt:=0;
	cnt2:=0;
	a:=myarray(x1,x2,x3,x4,x5);
	dbms_output.put_line('Original array:');
	for j in 1..5 loop
			dbms_output.put(a(j)||' ');
	end loop;
	dbms_output.put_line(' ');

	for k in 1..5 loop
		l:=5-k;
		flag:=0;
		dbms_output.put_line(k||'st/nd/rd/th iteration');
		for j in 1..l loop
			cnt2:=cnt2+1;
			if a(j)>a(j+1) then
				temp:=a(j);
				a(j):=a(j+1);
				a(j+1):=temp;
				flag:=1;
				cnt:=cnt+1;
			end if;
			for t in 1..5 loop
				dbms_output.put(a(t)||' ');		
			end loop;
			dbms_output.put_line('');
		end loop;
		
		
		if flag=0 then
			dbms_output.put_line('Sorting completed.No swaps required!');
			exit;
		end if;
	end loop;
	dbms_output.put_line('Sorted array:');

	for j in 1..5 loop
			dbms_output.put(a(j)||' ');
	end loop;
	dbms_output.put_line(chr(10)||'Number of swaps:'||cnt);
	dbms_output.put_line('Number of comparison:'||cnt2);

		
END;	 
				
				
		
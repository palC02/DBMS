declare	
	type roll_tot is varray(5) of number(3);
	type name is varray(5) of varchar2(10);
	type grade is varray(5) of varchar2(1);
	roll roll_tot;
	total roll_tot;
	gr grade;
	n name;
	i number(2);
	/*
	var_name varchar2(10);
	var_tot number(3);
	var_roll number(3);
	*/
begin
	gr:=grade('F','F','F','F','F');
	n:=name('A1','B2','C3','D4','E5');
	roll:=roll_tot(111,222,333,444,555);
	total:=roll_tot(90,80,70,30,60);
	
	
	for i in 1..5 loop
		if total(i)>90 then
			gr(i):='A';
		elsif total(i)>80 then
			gr(i):='B';
		elsif total(i)>70 then
			gr(i):='C';
		elsif total(i)>60 then
			gr(i):='D';
		else 
			gr(i):='F';
		end if;
	
	end loop;
	dbms_output.put_line('Name      Roll      Total      Grade');
	for i in 1..5 loop
dbms_output.put_line(n(i)||'      '||roll(i)||'      '||total(i)||'     '||gr(i));
	end loop;
	dbms_output.put_line('');

END;
	
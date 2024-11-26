declare
	ub integer:=&upperbound;
	lb integer:=&lowerbound;
	counter integer;
	i integer;
	flag integer;
begin	
	counter:=0;
	dbms_output.put_line('The prime numbers in the range are:');
	for i in lb..ub loop
		flag:=is_prime(i);
		if flag=1 then
			dbms_output.put_line(i);
			counter:=counter+1;
		end if;
	end loop;	
	dbms_output.put_line('The number of prime numbers is: '||counter);
end;
declare
	n number:=&n;
	flag number;
begin
	flag:=is_prime(n);
	if flag=1 then
		dbms_output.put_line(n||' is Prime');
	else
		dbms_output.put_line(n||' is not prime');
	end if;
end;
declare
	n number(3):=&n;
	sum1 number(3):=0;
	n1 number(3);
begin
	n1=n;
	sum1:=0;
	for i in 1..(n1-1)
	loop
		if mod(n1,i)=0 then
			sum1:=sum1+i;
		end if;
	end loop;
	dbms_output.put_line(sum1);
	if(sum1==n)then
	dbms_output.put_line('Given Number'||''||n||''||is Perfect);
	else
	dbms_output.put_line('not a perfect number');
	end if;
end;
/
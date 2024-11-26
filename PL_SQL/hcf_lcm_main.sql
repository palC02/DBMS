declare
	a number:=&number1;
	b number:=&number2;
	h integer;
	l integer;
begin
	h:=hcf(a,b);
	l:=lcm(a,b);
	dbms_output.put_line('The HCF and LCM respectively are:'||h||' and '||l);
end;
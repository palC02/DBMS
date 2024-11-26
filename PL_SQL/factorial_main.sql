declare
	factorial number;
	n number:=&number;
	

begin
	factorial:=fact(n);
	dbms_output.put_line('Input: '||n||chr(10)||'	Factorial: '||factorial);
end; 
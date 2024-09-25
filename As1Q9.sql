DECLARE
	i number(10):=1;
	k number(10);
	c number(5,5);
	u number(5,5);
BEGIN
	c:=1/62.0;
	u:=1/83.0;
	dbms_output.put_line('INR:  CAD:  USD');
	for i in 1..10 loop
		k:=i*100;
		dbms_output.put_line(k||':  '||c*k||':  '||u*k);
	end loop;
END; 
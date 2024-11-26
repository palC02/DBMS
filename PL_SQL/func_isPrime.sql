--function_1.sql:Write a function to test whether a number is prime or not a prime
CREATE or REPLACE FUNCTION is_prime(n IN INTEGER)
RETURN INTEGER
IS
n1 integer;
r integer;
flag INTEGER;
i integer;
BEGIN
	if(n=1) then
		return 0;
	end if;
	n1:=floor(n/2);
	flag:=1;
	--flag=1 means n is prime otherwise non prime
	for i in 2..n1 loop
		r:=mod(n,i);
		if r=0 then
			flag:=0;
			exit;
		end if;
 	end loop;
	return flag;

END;

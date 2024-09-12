create table multi(
First_No number(4),
Second_No number(2),
prod number(5)
);
set serveroutput on
set verify off

DECLARE
	n1 number(4);
	prod number(5);
BEGIN
	n1:=&n1;
	for n2 in 1..10
	loop
 		prod:=n1*n2;
		insert into multi values(n1,n2,prod);
	end loop;
END;
/


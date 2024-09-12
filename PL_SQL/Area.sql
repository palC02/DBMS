create table areas(
 rad number(2),
 area number(10,4)
);
set serveroutput on
set verify off

declare
	rad number(2);
	area number(10,4);
	pi constant number(4,2):=3.14;
begin 
	for rad in 1..20
	loop
		area: pi*power(rad,2);
		insert into areas values(rad,area);
	end loop;
end;
/
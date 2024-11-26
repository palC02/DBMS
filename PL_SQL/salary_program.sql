/*
create table employee(eid number(3),ename varchar(40) NOT NULL,basic number(5),city varchar2(9) NOT NULL,CONSTRAINT employee_pk PRIMARY KEY(eid),CONSTRAINT basic_ck check(basic between 20000 and 100000),CONSTRAINT city_chk check(upper(city) in ('KOLKATA','MUMBAI','BANGALORE','DELHI')));
*/
declare
	cursor employee_cursor is
	select * from employee;
	v_employee employee%rowtype;
	v_da number(7,2);
	v_pf number(7,2);
	v_net number(7,2);
	v_gross number(7,2);
	v_basic employee.basic%type;
begin
	open employee_cursor;
	loop
		fetch employee_cursor into v_employee;
		exit when employee_cursor%notfound;
		v_da:=v_employee.basic*0.14;
		v_pf:=v_employee.basic*0.12;
		v_gross:=v_employee.basic + v_da+v_pf;
		v_net:=v_gross+v_pf;
		dbms_output.put_line('Employee name:'||v_employee.ename);
		dbms_output.put_line('Basic salary:'||v_employee.basic);
		dbms_output.put_line('DA:'||v_da);
		dbms_output.put_line('PF:'||v_pf);
		dbms_output.put_line('Employee city:'||v_employee.city);
		dbms_output.put_line('Gross salary:'||v_gross);
		dbms_output.put_line('Net salary:'||v_net);
		if upper(v_employee.city)='KOLKATA' then
			v_basic:=v_employee.basic*1.1;
		end if;
		if upper(v_employee.city)='MUMBAI' then
			v_basic:=v_employee.basic*1.15;
		end if;
		if upper(v_employee.city)='BANGALORE' then
			v_basic:=v_employee.basic*1.15;
		end if;
		if upper(v_employee.city)='CHENNA' then
			v_basic:=v_employee.basic*1.1;
		end if;
		
		update employee set basic=v_basic where eid=v_employee.eid;
		dbms_output.put_line('Updated basic salary:'||v_basic);

		dbms_output.put_line(chr(10));
		dbms_output.put_line('----------------------------------------------------------------------');
		
	end loop;
	close employee_cursor;
end;
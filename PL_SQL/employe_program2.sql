DECLARE
    var_empid emp.eid%TYPE;
    var_ename emp.ename%TYPE;
    var_sal emp.esal%TYPE;
    

    CURSOR emp_cursor IS
        SELECT eid, ename, esal
        FROM emp FOR UPDATE;
	incr emp.esal%type;
BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO var_empid, var_ename, var_sal;

               EXIT WHEN emp_cursor%NOTFOUND;

                IF (var_sal > 30000) THEN
         		incr:=0.12*var_sal;   
	        ELSE
			incr:=0.15*var_sal;            
        	END IF;
		UPDATE emp SET esal=esal+incr;
	
    END LOOP;
    CLOSE emp_cursor;
END;
/

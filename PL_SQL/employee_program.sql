DECLARE
    var_empid emp.eid%TYPE;
    var_ename emp.ename%TYPE;
    var_sal emp.esal%TYPE;

    CURSOR emp_cursor IS
        SELECT eid, ename, esal
        FROM emp;
BEGIN
    -- Open the cursor
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO var_empid, var_ename, var_sal;

               EXIT WHEN emp_cursor%NOTFOUND;

                IF (var_sal > 30000) THEN
            DBMS_OUTPUT.PUT_LINE(var_empid || ' ' || var_ename || ' ' || var_sal);
        ELSE
            DBMS_OUTPUT.PUT_LINE(var_ename || ' Salary is less than 30,000');
        END IF;
    END LOOP;
    CLOSE emp_cursor;
END;
/

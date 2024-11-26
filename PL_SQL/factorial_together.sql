declare
	factorial number;
	n number:=&number;

FUNCTION fact(x IN INTEGER)  -- Use INTEGER instead of NUMBER for factorial
RETURN INTEGER  -- Return INTEGER since factorials are whole numbers
IS
    f INTEGER := 1;  -- Initialize factorial result to 1
BEGIN
    -- Handle edge cases for factorial(0) and factorial(1)
    IF x = 0 OR x = 1 THEN
        RETURN 1;
    END IF;

    -- Loop to calculate factorial for x > 1
    FOR i IN 2..x LOOP
        f := f * i;
    END LOOP;

    RETURN f;  -- Return the computed factorial
END fact;

	

begin
	factorial:=fact(n);
	dbms_output.put_line('Input: '||n||chr(10)||'	Factorial: '||factorial);
end; 


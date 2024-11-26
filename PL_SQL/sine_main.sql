DECLARE
    k NUMBER := 0;             -- Initialize k to 0
    sinevalue NUMBER;          -- Declare sinevalue with general precision
    cosinevalue NUMBER;
    tanvalue NUMBER;
BEGIN
    -- Loop until k exceeds a reasonable range (e.g., 360 degrees)
    LOOP
        sinevalue := sine(k);  -- Call the sine function
	cosinevalue:= cosine(k);
	tanvalue :=sinevalue/cosinevalue;
        -- Output the sine value for each angle k
        dbms_output.put_line('Angle: ' || k || '   Sine value: ' || sinevalue|| '   Cosine value: ' || cosinevalue|| '   Tangent value: ' || tanvalue);

        -- Increment k by 5 degrees (or any other desired increment)
        k := k + 5;

        -- Exit condition to avoid infinite loop (e.g., stop at 360 degrees)
        IF k > 90 THEN
            EXIT;
        END IF;
    END LOOP;
END;

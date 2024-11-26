CREATE OR REPLACE FUNCTION lcm(a IN INTEGER, b IN INTEGER)
RETURN INTEGER
IS
    i INTEGER;
    lcm INTEGER := 0;  -- Initialize hcf to 0
    l INTEGER;
    u INTEGER;
BEGIN
    -- Assign the smaller and larger values to l and u
    IF (a <= b) THEN
           u := b;
    ELSE
        u := a;
    END IF;
    
    -- Loop from l down to 2 to find the LCM
    FOR i IN u..(a*b)  LOOP
        IF (MOD(i,a) = 0) AND (MOD(i,b) = 0) THEN
            lcm := i;
            EXIT; -- Exit the loop when HCF is found
        END IF;
    END LOOP;
    
    RETURN lcm; -- Return the least common multiple
END;

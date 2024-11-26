CREATE OR REPLACE FUNCTION hcf(a IN INTEGER, b IN INTEGER)
RETURN INTEGER
IS
    i INTEGER;
    hcf INTEGER := 1;  -- Initialize hcf to 1
    l INTEGER;
    u INTEGER;
BEGIN
    -- Assign the smaller and larger values to l and u
    IF (a <= b) THEN
        l := a;
        u := b;
    ELSE
        l := b;
        u := a;
    END IF;
    
    -- Loop from l down to 2 to find the HCF
    FOR i IN REVERSE 2..l LOOP
        IF (MOD(a, i) = 0) AND (MOD(b, i) = 0) THEN
            hcf := i;
            EXIT; -- Exit the loop when HCF is found
        END IF;
    END LOOP;
    
    RETURN hcf; -- Return the highest common factor
END;

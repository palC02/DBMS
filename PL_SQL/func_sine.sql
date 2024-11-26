CREATE OR REPLACE FUNCTION sine(x IN NUMBER)
RETURN NUMBER
IS
    angle NUMBER;  -- Store the angle in radians
    sin_value NUMBER := 0;  -- Initialize sin_value to 0
    term NUMBER;
    sgn INTEGER := 1;  -- Sign alternates between 1 and -1
    i INTEGER := 1;  -- Power starts at 1
BEGIN
    -- Convert angle from degrees to radians
    angle := x * (3.1415926 / 180);  -- or use a better approximation for pi
    
    -- Loop to calculate terms in the Taylor series expansion of sine
    LOOP
        -- Calculate the current term in the series
        term := angle ** i;  -- angle raised to the power of i
        term := term * sgn;  -- Apply the sign (alternates between positive and negative)
        term := term / fact(i);  -- Divide by factorial(i)
        
        -- Add the current term to the sin_value accumulator
        sin_value := sin_value + term;
        
        -- Exit the loop if the term is sufficiently small
        IF ABS(term) < 10 ** (-5) THEN
            EXIT;
        END IF;
        
        -- Alternate the sign and increment i by 2 (1, 3, 5, 7, ...)
        sgn := sgn * (-1);
        i := i + 2;  -- Increment by 2 for odd powers
    END LOOP;
    
    -- Return the computed sine value
    RETURN sin_value;
END;

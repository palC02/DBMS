DECLARE
       PROCEDURE hanoi(p_num_disks IN INTEGER, p_from_rod IN VARCHAR2, p_to_rod IN VARCHAR2, p_aux_rod IN VARCHAR2) IS
    BEGIN
        -- Base case: If only one disk, move it directly from source to target rod
        IF p_num_disks = 1 THEN
            DBMS_OUTPUT.PUT_LINE('Move disk 1 from ' || p_from_rod || ' to ' || p_to_rod);
        ELSE
                        hanoi(p_num_disks - 1, p_from_rod, p_aux_rod, p_to_rod);
                        DBMS_OUTPUT.PUT_LINE('Move disk ' || p_num_disks || ' from ' || p_from_rod || ' to ' || p_to_rod);
            
                       hanoi(p_num_disks - 1, p_aux_rod, p_to_rod, p_from_rod);
        END IF;
    END hanoi;

BEGIN
       DECLARE
        num_disks INTEGER := 3; 
    BEGIN
               hanoi(num_disks, 'A', 'C', 'B');
    END;
END;
/

--Write a Program in PL/SQL to input n(1-10).
--Calculate and Print s=1+1/1!+1/2!+1/3!+....+1/n!

DECLARE
      n NUMBER(5):=&n;
      i NUMBER(5);
      fact NUMBER(10);
      s NUMBER(10,7):=1;
BEGIN
      fact:=1;
        FOR i in 1..n
          LOOP
            fact:=fact*i;
            s:=s+1/fact;
          END LOOP;
        DBMS_OUTPUT.PUT_LINE('Fact: '||s);
END;
/

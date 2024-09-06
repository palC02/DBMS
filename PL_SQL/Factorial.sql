--Write a Program in PL/SQl to input n(1-20).
--Calculate and Print s1=(1)+(1+2)+(1+2+3)+....+(1+2+3+...+n).

DECLARE
      s number(5):=0;
      n number(2):=&n;
      s1 number(2):=0;
      i number(2);
BEGIN
      FOR i in 1..n
      LOOP
      s:=s+i;
      s1:=s1+s;
      END LOOP;
DBMS_OUTPUT.put_line('Fact: '||s1);
END;
/

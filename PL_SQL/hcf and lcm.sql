--Write a PRogram in PL/SQL to input 2 integers (a,b).
--Calculate and Print (i) hcf of a,b and (ii) lcm of a,b.

DECLARE
      a number(5):=&a;
      b number(5):=&b;
      x number(5);
      y number(5);
      h number(5);
      lc number(5);
      r number(5);
BEGIN
      x:=a;
      y:=b;
--to calculate HCF of 2 integers
      r:=MOD(x,y);
      WHILE(r!=0)
      LOOP
      x:=y;
      y:=r;
      r:=MOD(x,y);
      END LOOP;
      h:=y;
--to calculate LCM of 2 intergers
      lc:=a*b/h;
      dbms_output.put_line('HCF('||a||','||b||')='||h);
      dbms_output.put_line('LCM('||a||','||b||')='||lc);
END;
/

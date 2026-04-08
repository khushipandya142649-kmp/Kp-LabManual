--Write a trigger to insert the values into the EMP_MIRROR table when the records are inserted into the EMP table.

set serveroutput on
create or replace trigger td1
before INSERT on emp
for each row
begin
INSERT INTO NEWEMP VALUES(:new.EMPID ,:new.ENAME,:new.deptno,:new.salary);
end td1;
/

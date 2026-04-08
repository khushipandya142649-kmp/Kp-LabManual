--Write a trigger to insert the existing values of the EMP table into EMP_MIRROR table when the record is deleted from EMP table.

create or replace trigger td3
before DELETE on emp
for each row
begin
insert into EMP_MIRROR values(:old.empid,:old.ename,:old.deptno,:old.salary);
end td3;
/

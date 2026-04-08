--Write a trigger to insert the existing values of the EMP table into EMP_MIRROR table when the record is updated in EMP table.

create or replace trigger td2
before Update On emp
for each row
begin
insert into EMP_MIRROR values(:old.empid,:old.ename,:old.deptno,:old.salary);
end td2;
/

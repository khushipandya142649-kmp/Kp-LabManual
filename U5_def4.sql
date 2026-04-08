--Write a trigger that restricts the entry of record in EMP table if salary is greater than Rs 50000.

create or replace trigger td4
before insert on emp
for each row
begin
if :new.salary > 50000 then
	RAISE_APPLICATION_ERROR(-20201,'salary not more than 50000');
end if;
end td4;
/

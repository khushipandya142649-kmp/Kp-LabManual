--Write a trigger to restrict user form accessing the table on SUNDAY.

create or replace trigger td5
before insert or update or delete
on emp
for each row
begin
if Trim(to_char(sysdate,'Day'))='Sunday' then
raise_application_error(-20115,'You cant access table on Sunday');
end if;
end td5;
/

--Write a PL/SQL block using a cursor FOR loop to display name and the basic salary of top 3 highest paid employees. (Use Cursor For Loop)

set serveroutput on

begin
	for r1 IN (select name, bas_salary from (select name,bas_salary from emp order by bas_salary DESC) where rownum<=3)
	loop
		DBMS_OUTPUT.PUT_LINE ('Name:'||r1.name);
		DBMS_OUTPUT.PUT_LINE ('Salary:'||r1.bas_Salary);
	end loop;

end;
/
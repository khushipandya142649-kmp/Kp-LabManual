--Write a PL/SQL block that uses a cursor attribute SQL%ROWCOUNT to raise the basic salary of employees by 10% that are working in department number 10 and also display the appropriate message based on the existence to the 
--record in the EMP table. (Use Implicit Cursor)

set serveroutput on

begin
	update emp set BAs_SALARY=bas_salary + (Bas_salary*0.10) where deptno=10;
		dbms_output.put_line('Salary Updated..');
	
	if SQL%FOUND then
		dbms_output.put_line('Total no of records updated are:'||SQL%ROWCOUNT);
	end if;
end;
/
--Write a PL/SQL block that uses a cursor attribute %ISOPEN and %NOTFOUND to raise the basic salary of employees of department number 20 by 5% and also display the appropriate message based on 
--the existence to the record in the EMP table. Whenever any such raise is given to the employees,a record for the same is maintained in the emp_update table. (Perform using both Implicit and Explicit 
--Cursor).

set serveroutput on

begin
				update emp set bas_salary=bas_salary+(bas_salary*0.05) where deptno=20;
		if sql%isopen then
			dbms_output.put_line('Cursor is open');
		end if;

		if SQL%NOTFOUND then
			dbms_output.put_line('Cursor is close');
		else 
			dbms_output.put_line('Total updated records:'||SQL%ROWCOUNT);
		end if;

end;
/
--Write a PL/SQL block that uses a cursor attribute %ISOPEN and %NOTFOUND to raise the basic salary of employees of department number 20 by 5% and also display the appropriate message based on 
--the existence to the record in the EMP table. Whenever any such raise is given to the employees,a record for the same is maintained in the emp_update table. (Perform using both Implicit and Explicit 
--Cursor).

set serveroutput on

declare
	cursor def2 is select bas_salary from emp where deptno=10;
	sal	emp.bas_salary%TYPE;
	n	number;

begin
	open def2;
		if def2%isopen then
			loop
				fetch def2 into sal;
			exit when def2%NOTFOUND;
				n:=sal*0.20;
				update emp set bas_salary=sal+n where deptno=10;
			end loop;
				dbms_output.put_line('Basic salary is updated.');
	close def2;
		else
				dbms_output.put_line('Cursor not open.');
		end if;

end;
/
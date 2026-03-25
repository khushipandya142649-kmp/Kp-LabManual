--Write a PL/SQL block to display the salary of that employee whose age is 45 year otherwise display appropriate message using exception handling.

set serveroutput on

declare
	a emp.age%TYPE;
	xeid emp.eid%TYPE;
	enm emp.name%TYPE;
	sal emp.bas_salary%TYPE;

begin
	select eid,name,bas_salary INTO xeid,enm,sal from emp where age=45;
		dbms_output.put_line('Employee ID:'||xeid);
		dbms_output.put_line('Employee name:'||enm);
		dbms_output.put_line('Employee Salary:'||sal);

EXCEPTION
	WHEN NO_DATA_FOUND THEN
	dbms_output.put_line('No employee found whose age is 45');

end;
/
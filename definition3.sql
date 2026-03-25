--Write a PL/SQL block to accept employee name from a user if it is exist display his/her basic salary otherwise display appropriate message using exception handling.

set serveroutput on

declare
	xeid emp.eid%TYPE:=&xeid;
	enm emp.name%TYPE;
	dno emp.deptno%TYPE;
	sal emp.bas_salary%TYPE;

begin
	select name,deptno,bas_salary INTO enm,dno,sal from emp where eid=xeid;
		dbms_output.put_line('Employeename:'||enm);
		dbms_output.put_line('Department no:'||dno);
		dbms_output.put_line('Employee Salary:'||sal);

EXCEPTION
	WHEN NO_DATA_FOUND THEN
		dbms_output.put_line('Employee ID entered by u not found in emp table:');

end;
/
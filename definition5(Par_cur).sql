--Write a PL/SQL block using a parameterized cursor that displays the department wise basic salary of each employee and department wise total gross salary. 
--(Parameterized Cursor).

set serveroutput on

declare
	cursor c1(xdeptno number) is select name,deptno,bas_salary,gross from emp where deptno= xdeptno;
		x c1%ROWTYPE; 

begin
	open c1(20);
		loop
			fetch c1 INTO x;
		exit when c1%NOTFOUND;
			dbms_output.put_line('Ename: '|| x.name||' Deptno: '|| x.deptno||' Salary: '|| x.bas_salary||' Gross Salary: '||x.gross);
		end loop;
	close c1;
END;
/
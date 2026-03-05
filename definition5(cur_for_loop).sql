--Write a PL/SQL block using a parameterized cursor that displays the department wise basic salary of each employee and department wise total gross salary. 
--(Use cursor for loop).

set serveroutput on

declare
	cursor cur2(dno number) is select name,deptno,bas_salary,gross from emp where deptno=dno;

begin
	for r1 IN cur2(10)
	loop
		dbms_output.put_line('Ename: '|| r1.name||' Deptno: '|| r1.deptno||' salary: '|| r1.bas_salary||' Gross salary: '||r1.gross);
	end loop;

end;
/
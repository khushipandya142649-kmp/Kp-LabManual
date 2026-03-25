--Write a PL/SQL block using a cursor to insert the records of employee in EMP_BACKUP table for given department number, also raise a user defined exception 
--NO_DEPT_EXIST when no records are found for entered DEPT_NO. (Use User Defined Exception)

set serveroutput on

declare
	cursor e1(xdeptno number) is select * from emp where deptno=xdeptno;
	r e1%rowtype;
	xdeptno emp.deptno%TYPE:=&xdeptno;
	NO_DEPT_EXIST exception;
	v_count number:=0;
begin
	open e1(xdeptno);
		loop
			fetch e1 INTO r;
		 	exit when e1%notfound;
				insert into emp_backup Values(r.eid,r.name,r.deptno,r.deptname,r.gender,r.age,r.bas_salary,r.gross);
			v_count:=v_count+1;
		end loop;
	
		if v_count=0 then
			Raise NO_DEPT_EXIST;
		end if;
				dbms_output.put_line('Records inserted successfully into EMP_Backup for DeptNo: ' || xdeptno);
	close e1;

EXCEPTION
	WHEN NO_DEPT_EXIST THEN
		dbms_output.put_line('department not found');
	WHEN OTHERS THEN
		dbms_output.put_line('ERROR: ' ||SQLERRM);
end;
/
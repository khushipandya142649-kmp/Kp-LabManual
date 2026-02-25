--Program to display all records of Male employees working in HR Dept
set serveroutput on
declare
	v_eid	Employee.eid%TYPE;
	v_ename	Employee.ename%TYPE;
	v_dname	Employee.dname%TYPE;
	v_salary	Employee.salary%TYPE;
	v_gender	Employee.gender%TYPE;
begin
	select eid,ename,dname,salary,gender into v_eid,v_ename,v_dname,v_salary,v_gender from Employee where Gender='M'
	and dname='HR';
	
	dbms_output.put_line('EID: '||v_eid|| ',Name: '||v_ename|| ',Dept: '||v_dname|| ',Salary: '||v_salary|| ',Gender: '||v_gender);
end;
/

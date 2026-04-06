--Write a simple procedure that increases the basic salary of employees for the given department no by percentage inputted by the user using IN parameter.

create or replace procedure pro_def2(xdeptno IN number,xper IN number)
is
begin
	update emp set BASICSAL=BASICSAL + (BASICSAL * (xper/100)) WHERE DEPTNO=xdeptno;
	commit;
end pro_def2;
/
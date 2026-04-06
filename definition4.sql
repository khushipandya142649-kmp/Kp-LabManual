-- Write a function that returns the cube of the given number. Execute the function using separate PL/SQL block and on the command line.

create or replace function fun_def4(x in number,ans out number) 
Return number
is
begin
	ans:=x * x * x;
	return ans;
end fun_def4;
/
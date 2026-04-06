--Write a function that returns balance for given account number. (Create ACCOUNT table with ACNO, CNAME, BNAME, BALANCE columns using appropriate datatypes)

create or replace function fun_Bal (xacno IN number) 
RETURN NUMBER
IS
	bal number;
begin
	select balance INTO bal from account where acno=xacno;
	return bal;
end fun_Bal;
/
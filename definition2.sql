--Write a PL/SQL block that explains the use of ZERO_DIVIDE exception.

set serveroutput on

declare
	a number:=&a;
	b number:=&b;
	ans number;

begin
	dbms_output.put_line('value of a: '||a);
	dbms_output.put_line('value of b: '||b);
	ans:=a/b;
	dbms_output.put_line('answer :'||ans);

EXCEPTION
	WHEN ZERO_DIVIDE THEN
	dbms_output.put_line('value of b must not be zero');

end;
/
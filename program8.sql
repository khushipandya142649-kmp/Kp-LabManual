--Write a program to generate the numbers using LOOP, FOR LOOP
and WHILE LOOP up to the number inputted by user.

set serveroutput on

declare
	i	number(3):=1;
	n	number(5):=&n;
	x  number:=1;
begin
	loop 
		dbms_output.put_line(i);
		i:=i+1;
		exit when i>n;
	end loop;

	dbms_output.put_line('Example of for loop');
	for i in 1..n
	loop
		dbms_output.put_line(i);	
	end loop;


	dbms_output.put_line('Example of while loop');
	while x <=n
	loop
		dbms_output.put_line(x);
		x:=x+1;	
	end loop;
end;
/
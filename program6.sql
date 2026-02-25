--Program to calculate the square and cube of the given number.
set serveroutput on
declare
	v_num	number;
	v_square	number;
	v_cube	number;
begin
	v_num:=&num;
	v_square:=v_num*v_num;
	v_cube:=v_num*v_num*v_num;

	dbms_output.put_line('Given Number: '||v_num);
	dbms_output.put_line('Square: '||v_square);
	dbms_output.put_line('Cube: '||v_cube);
end;
/
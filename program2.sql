--program to convert temperature from celsius to fahrenheit
set serveroutput on
accept c prompt 'Enter temperature in celsius:'
declare
	celsius	number:=&c;
	fahrenheit	number;
begin
	fahrenheit:=(celsius*9/5)+32;
	dbms_output.put_line('Celsius: '||celsius);
	dbms_output.put_line('Fahrenheit: '||fahrenheit);
end;
/
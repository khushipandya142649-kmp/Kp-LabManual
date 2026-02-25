--program to accept measurement in feet and displays it in cm,inches and meter.
set serveroutput on
declare
	v_feet	number;
	v_cm	number;
	v_inches	number;
	v_meter	number;
begin
	v_feet:=&feet;
	v_cm:=v_feet*12;
	v_inches:=v_feet*30.48;
	v_meter:=v_feet*0.3048;
	
	dbms_output.put_line('Measurement in feet: '|| v_feet);
	dbms_output.put_line('Measurement in cm: '||v_cm);
	dbms_output.put_line('Measurement in inches: '||v_inches);
	dbms_output.put_line('Measurement in meter: '||v_meter);
end;
/
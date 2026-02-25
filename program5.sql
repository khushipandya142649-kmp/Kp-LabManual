--Program to calculate the simple interest based on ginen principal amt,roi and no of years
set serveroutput on
declare

	v_principal	number:=10000;
	v_rate	number:=5;
	v_time	number:=3;
	v_interest	number;
begin
	v_interest:=(v_principal*v_rate*v_time)/100;

	dbms_output.put_line('Principal Amount: '||v_principal);
	dbms_output.put_line('Rate of Interest: '||v_rate);
	dbms_output.put_line('Time(Years): '||v_time);
	dbms_output.put_line('Simple Interest: '||v_interest);
end;
/
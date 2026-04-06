--calling program of definition 3

set serveroutput on

declare
	id number:=&id;
	nm char(20);
begin
	pro_def3(id,nm);
		dbms_output.put_line('Employee Name:='||nm);
end;
/
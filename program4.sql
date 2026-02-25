--Program to delete an employee record for a given EID.
set serveroutput on
declare
	v_eid	Employee.EID%TYPE:=&eid;
begin
	delete from Employee where EID=v_eid;
	dbms_output.put_line('One record is deleted');
end;
/
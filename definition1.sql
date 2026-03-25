--Write a PL/SQL block to accept student name from a user if it is exist display his/her result from RESULT table otherwise display appropriate message using 
--exception handling.

set serveroutput on

declare
	rn result.rollno%TYPE;
	snm result.name%TYPE:='&snm';
	p result.per%TYPE;
	
begin
	select rollno,name,per INTO rn,snm,p from result where name=snm;
	dbms_output.put_line('Roll No: '||rn);
	dbms_output.put_line('Student Name: '||snm);
	dbms_output.put_line('Percentage: '||p);

EXCEPTION
	WHEN NO_DATA_FOUND THEN
	dbms_output.put_line('Student name entered by u not found in student table:');

end;
/
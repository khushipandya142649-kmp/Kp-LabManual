/*Write a procedure that search’s whether the given employee id is present or not in the table. If employee is found then show its name otherwise raise appropriate error message (Use both IN and OUT mode variables) and also write a PL/SQL block to call the procedure.*/

create or replace procedure pro_def3(xeid IN number,xenm OUT char)
IS
BEGIN
	select ename INTO xenm from emp where EID=xeid;
Exception
	WHEN NO_DATA_FOUND THEN
		dbms_output.put_line('inputted eid is not exists in emp table');
end pro_def3;
/
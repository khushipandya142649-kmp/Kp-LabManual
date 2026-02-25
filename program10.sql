//Write a PL/SQL block which displays gross salary of employees as per user input EID. (Consider EMP table with EID, EName, Deptno,Deptname Gender, Age, 
BasicSal) with appropriate data types.)Gross_Salary:= BASICSAL + (DA + HRA + Medical) – PF.Rules: HRA = 15% of basic, DA = 50% of basic, Medical = Rs.
500, PF = 10% of basic.//

set serveroutput on
declare
	xeid	NUMBER(4):=&xeid;
	basic	NUMBER(9,2);
	da	number(8);
	hra	number(8);
	medical	number(4):=500;
	pf	number(8);
	gross_sal	number(8);	
begin
	select BAS_SALARY into basic from EMP where eid=xeid;
	da:=basic*0.50;
	hra:=basic*0.15;
	pf:=basic*0.10;

	gross_sal:=basic+(da+hra+medical)-pf;
	update EMP set gross=gross_sal where eid=xeid;
	commit;
end;
/

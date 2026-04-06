--calling program of definition 5


declare
	ano number:=&ano;
	amt number;
begin
	amt:=fun_Bal(ano);
		dbms_output.put_line(amt);
end;
/
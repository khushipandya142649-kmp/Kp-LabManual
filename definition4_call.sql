--calling program of definition 4

declare
	c number:=&c;
	mycube number;
begin
	mycube:=fun_def4(c,mycube);
		dbms_output.put_line(mycube);
end;
/
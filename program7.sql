--Write a PL/SQL block to accept product name, qty and price from user and then calculate discount in Rs. based on the given (%).

set serveroutput on
declare
	xpid	 NUMBER(3):=&xpid;
	xpname	 VARCHAR2(15);
	xqty	NUMBER(8);
	xp	NUMBER(9,2);
	xtb	NUMBER(10,2);
begin
	select pname,qty,price into xpname,xqty,xp from product where pid=xpid;
	xtb:=xqty*xp;
		update product set totalbill=xtb where pid=xpid;
		if xtb<5000 then
			update product set discount=0 where pid=xpid;
		elsif xtb>=5000 and xtb<8000 then
			update product set discount=totalbill*0.05 where pid=xpid;
		elsif xtb>=8000 and xtb<15000 then
			update product set discount=totalbill*0.10 where pid=xpid;
		elsif xtb>=15000 then
			update product set discount=totalbill*0.15 where pid=xpid;
		else
			update product set discount=0 where pid=xpid;
		end if;
	commit;
end;
/
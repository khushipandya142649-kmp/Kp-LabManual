--Write a simple procedure without any parameter that shows user defined message on the screen. Call the procedure using separate PL/SQL block and on the command line.

create or replace procedure def1
IS
BEGIN
    dbms_output.put_line('welcome');
END def1;
/
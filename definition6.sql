--Write a PACKAGE which includes Package Declaration, Package Body and call the individual object from the Package.
CREATE OR REPLACE PACKAGE BODY student_pack AS

  PROCEDURE add_student(p_id NUMBER, p_name VARCHAR2) IS
  BEGIN
    INSERT INTO student VALUES (p_id, p_name);
    DBMS_OUTPUT.PUT_LINE('Student Added Successfully!');
  END add_student;

  PROCEDURE show_student(p_id NUMBER) IS
    v_name student.name%TYPE;
  BEGIN
    SELECT name INTO v_name
    FROM student
    WHERE id = p_id;

    DBMS_OUTPUT.PUT_LINE('Student Name: ' || v_name);

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('No student found with this ID');
  END show_student;

END student_pack;
/
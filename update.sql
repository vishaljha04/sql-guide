/*
    Documentation for SQL Update and Select Operations

    This script performs updates on the 'student' table in the 'students' database.

    1. Update Gender and Email for Student with ID 1:
       - Sets the gender of the student with ID 1 to 'Male'.
       - Updates the email of the student with ID 1 to 'aarav12.sharma@gmail.com'.

    2. Update Gender for Student with ID 3:
       - Sets the gender of the student with ID 3 to 'Female'.

    3. Update Email for Student with ID 4:
       - Updates the email of the student with ID 4 to 'priyasingh@example.com'.

    4. Select All Records from Student Table:
       - Retrieves all records from the 'student' table to view the current state of the data after the updates.
*/
use students;


update student set gender = 'Male',email = 'aarav12.sharma@gmail.com' where id=1;
update student set gender = 'Female' where id = 3;
update student set email = 'priyasingh@example.com' where id = 4;

select * from student;

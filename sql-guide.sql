-- create database startersql;
-- use startersql;
-- create table users(
-- 	id int auto_increment primary key,
--     name varchar(100) not null,
--     email varchar(100) not null unique,
--     gender enum('Male','Female','others'),
--     date_of_birht date,
--     craeted_at timestamp default current_timestamp
-- );
-- select email from users;

-- rename table users to students;

-- select * from students
-- alter table students add column is_present Boolean default false
-- alter table students drop column is_present;
-- alter table students modify column name varchar(200);

-- alter table students modify column email varchar(100) after id;
-- alter table students modify column date_of_birth date first;
-- ALTER TABLE students CHANGE column date_of_birht date_of_birth DATE;
alter table students modify column date_of_birth date first;

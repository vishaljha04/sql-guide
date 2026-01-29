-- craete new databse
create database startersql;
-- use as default database
use startersql;
-- create a new table users
create table users(
	id int auto_increment primary key,
    name varchar(100) not null,
    email varchar(100) not null unique,
    gender enum('Male','Female','others'),
    date_of_birht date,
    craeted_at timestamp default current_timestamp
);
-- select whole table
select * from users;
--select specific rows
select id,email from users;
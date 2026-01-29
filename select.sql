-- select all
select * from users;

--select specific colums 
select email,id from users;

--rename table
rename table users to students

-- alterning table
alter table students add column is_present Boolean default false

alter table students drop column is_present;

-- modify exiting colums
alter table students modify column name varchar(200);


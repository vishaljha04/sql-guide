use startersql;
select * from users;
insert into users (name,email,gender,date_of_birth) values
("Vishal","vjha93011@gmail.com","Male",default);

insert into users (date_of_birth) value
("2004-07-28");



insert into users values (
	'2024-04-24',1,'Alice@gmail.com','Alice Snow','Male',default
);
select * from users;

-- inserting data in multiple columns
insert into users (name,email,gender,date_of_birth)values
('John Snow','johnsnow@gmail.com',"Male",'1990-12-31'),
('Johy Modana','johny344@gmail.com','Female','1940-12-21');


use students;

create table users (
	id int primary key,
    name varchar(100) not null,
    email varchar(100) unique not null,
    gender enum('Male','Female','Other'),
    dob date,
    salary decimal(10,2),
    created_at timestamp default current_timestamp
)

INSERT INTO users (id, name, email, gender, dob, salary)
VALUES
(1, 'John Doe', 'john.doe@example.com', 'Male', '1990-05-12', 55000.00),
(2, 'Alice Smith', 'alice.smith@example.com', 'Female', '1988-08-22', 62000.00),
(3, 'Bob Johnson', 'bob.johnson@example.com', 'Male', '1992-01-15', 48000.00),
(4, 'Clara Davis', 'clara.davis@example.com', 'Female', '1995-03-30', 51000.00),
(5, 'David Lee', 'david.lee@example.com', 'Male', '1985-12-05', 75000.00),
(6, 'Eva Brown', 'eva.brown@example.com', 'Female', '1993-07-19', 58000.00),
(7, 'Frank Wilson', 'frank.wilson@example.com', 'Male', '1989-11-23', 64000.00),
(8, 'Grace Taylor', 'grace.taylor@example.com', 'Female', '1991-09-02', 60000.00),
(9, 'Henry Moore', 'henry.moore@example.com', 'Male', '1987-04-11', 72000.00),
(10, 'Isla White', 'isla.white@example.com', 'Female', '1994-02-17', 53000.00),
(11, 'Jack Harris', 'jack.harris@example.com', 'Male', '1990-06-21', 56000.00),
(12, 'Kylie Martin', 'kylie.martin@example.com', 'Female', '1992-10-10', 59000.00),
(13, 'Liam Thompson', 'liam.thompson@example.com', 'Male', '1986-01-29', 68000.00),
(14, 'Mia Garcia', 'mia.garcia@example.com', 'Female', '1993-08-14', 61000.00),
(15, 'Noah Martinez', 'noah.martinez@example.com', 'Male', '1991-03-07', 57000.00),
(16, 'Olivia Rodriguez', 'olivia.rodriguez@example.com', 'Female', '1989-12-18', 65000.00),
(17, 'Paul Lewis', 'paul.lewis@example.com', 'Male', '1990-09-27', 59000.00),
(18, 'Quinn Walker', 'quinn.walker@example.com', 'Other', '1994-05-05', 54000.00),
(19, 'Rachel Hall', 'rachel.hall@example.com', 'Female', '1988-07-23', 67000.00),
(20, 'Sam Young', 'sam.young@example.com', 'Male', '1992-11-12', 58000.00);

Insert into users(name,email,gender,dob,salary) 
value(21,"ram Young","samy@emample.com","Female","1982-11-12",34000.00);

ALTER TABLE users 
MODIFY COLUMN id INT NOT NULL AUTO_INCREMENT;

insert into users (name,email,gender,dob,salary) value 
("vishal Jha","vjha93011@gmail.com","Male","2004-07-28",80000.00);



select * from users;


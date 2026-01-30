use students;

CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    gender ENUM('Male', 'Female', 'Other'),
    DOB DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- insert
INSERT INTO student (name, email, gender, DOB) VALUES
('Aarav Sharma', 'aarav.sharma@gmail.com', 'Male', '2001-03-15'),
('Ananya Verma', 'ananya.verma@gmail.com', 'Female', '2002-07-22'),
('Rohan Mehta', 'rohan.mehta@gmail.com', 'Male', '2000-11-10'),
('Priya Singh', 'priya.singh@gmail.com', 'Female', '2001-01-05'),
('Kunal Patel', 'kunal.patel@gmail.com', 'Male', '1999-06-18'),
('Neha Gupta', 'neha.gupta@gmail.com', 'Female', '2002-09-30'),
('Arjun Nair', 'arjun.nair@gmail.com', 'Male', '2000-04-12'),
('Sneha Iyer', 'sneha.iyer@gmail.com', 'Female', '2001-12-08'),
('Vikram Rao', 'vikram.rao@gmail.com', 'Male', '1998-08-25'),
('Pooja Malhotra', 'pooja.malhotra@gmail.com', 'Female', '2002-02-14'),
('Rahul Das', 'rahul.das@gmail.com', 'Male', '1999-10-03'),
('Isha Kapoor', 'isha.kapoor@gmail.com', 'Female', '2001-05-27'),
('Siddharth Jain', 'siddharth.jain@gmail.com', 'Male', '2000-07-19'),
('Kavya Reddy', 'kavya.reddy@gmail.com', 'Female', '2002-11-11'),
('Amit Chawla', 'amit.chawla@gmail.com', 'Male', '1998-03-09'),
('Nidhi Bansal', 'nidhi.bansal@gmail.com', 'Female', '2001-09-16'),
('Manish Kumar', 'manish.kumar@gmail.com', 'Male', '1999-12-01'),
('Ritika Saxena', 'ritika.saxena@gmail.com', 'Female', '2000-06-21'),
('Dev Malani', 'dev.malani@gmail.com', 'Male', '2002-01-30'),
('Ayesha Khan', 'ayesha.khan@gmail.com', 'Other', '2001-08-04');

-- SELECT specific columns from all students
SELECT name, gender FROM student;

-- SELECT with WHERE: Filter Female students and show gender and name
SELECT gender, name FROM student WHERE gender = 'Female';

-- SELECT with WHERE: Find students born before April 3, 2000
SELECT gender, email, DOB FROM student WHERE DOB < '2000-04-03';

-- SELECT with WHERE: Get first 9 students (id less than 10)
SELECT * FROM student WHERE id < 10;

-- SELECT with IS NOT NULL: Find all students with a valid date of birth
SELECT * FROM student WHERE DOB IS NOT NULL;

-- SELECT with IS NULL: Find all students without a date of birth (should return empty)
SELECT * FROM student WHERE DOB IS NULL;

-- SELECT with BETWEEN: Find students born between Jan 3, 2000 and Feb 4, 2005
SELECT * FROM student WHERE DOB BETWEEN '2000-01-03' AND '2005-02-04';

-- SELECT with exact match: Get all students with gender 'Other'
SELECT * FROM student WHERE gender = 'Other';

-- SELECT with AND operator: Find Female students born after March 4, 2000
SELECT * FROM student WHERE gender = 'Female' AND DOB > '2000-03-04';

-- SELECT with LIKE pattern: Find Male students whose name starts with 'A'
SELECT * FROM student WHERE gender = 'Male' AND name LIKE 'A%';

-- ORDER BY DESC: List all students sorted by date of birth (newest first)
SELECT * FROM student ORDER BY DOB DESC;

-- ORDER BY ASC: List all students sorted by date of birth (oldest first)
SELECT * FROM student ORDER BY DOB ASC;

-- LIMIT: Retrieve only the first 6 students
SELECT * FROM student LIMIT 6;

-- SELECT all: Display complete student table
SELECT * FROM student;
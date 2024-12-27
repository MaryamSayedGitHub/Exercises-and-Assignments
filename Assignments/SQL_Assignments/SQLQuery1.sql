--Q1 
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    location VARCHAR(50)
);

INSERT INTO employees (emp_id, emp_name, dept_id, location)
VALUES 
    (1, 'John Doe', 101, 'Cairo'),
    (2, 'Jane Smith', 102, 'Alexandria'),
    (3, 'Ahmed Ali', 101, 'Cairo');


SELECT * 
FROM sys.tables 
WHERE name = 'employees';

SELECT * FROM employees;
SELECT emp_id, emp_name, dept_id 
FROM employees 
WHERE location = 'Cairo';

--Q2
SELECT DISTINCT dept_id 
FROM employees;

--Q3
CREATE TABLE students (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) DEFAULT 'Unknown',
    Address VARCHAR(100) DEFAULT 'N/A',
    City VARCHAR(50) DEFAULT 'N/A',
    Birth_Date DATE
);


SELECT * 
FROM sys.tables 
WHERE name = 'students';

--DROP TABLE students;


--Q4
EXEC sp_columns students;

INSERT INTO students (First_Name, Last_Name, Address, City, Birth_Date) 
VALUES ('Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01');

UPDATE students 
SET Address = 'Garden City' 
WHERE Last_Name = 'Ahmed';

--Q5
BEGIN TRANSACTION;

DELETE FROM students 
WHERE City = 'Cairo';

ROLLBACK;



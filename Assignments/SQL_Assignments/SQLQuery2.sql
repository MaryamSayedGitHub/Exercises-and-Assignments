--Q1
EXEC sp_columns employees;

--DROP TABLE employees;


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    lname VARCHAR(50),
    emp_salary DECIMAL(10, 2),
    manager_id INT,
    department_id INT
);

INSERT INTO employees (emp_id, lname, emp_salary, manager_id, department_id)
VALUES 
    (1, 'Smith', 2500, 101, 10),
    (2, 'Johnson', 4500, 102, 20),
    (3, 'Williams', 2000, NULL, 30);


SELECT COLUMN_NAME, DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'employees';

SELECT emp_id, lname AS last_name, emp_salary AS salary
FROM employees
WHERE emp_salary BETWEEN 2000 AND 5000
  AND manager_id NOT IN (101, 200);



--Q2
SELECT * 
FROM sys.tables 
WHERE name = 'departments';

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO departments (department_id, name)
VALUES 
    (10, 'HR'),
    (20, 'Finance'),
    (30, 'IT');

ALTER TABLE employees 
ADD department_id INT;

UPDATE employees 
SET department_id = 10 
WHERE emp_id = 1;

UPDATE employees 
SET department_id = 20 
WHERE emp_id = 2;

UPDATE employees 
SET department_id = 30 
WHERE emp_id = 3;

SELECT e.lname AS employee_name, d.name AS department_name
FROM dbo.employees e
INNER JOIN dbo.departments d ON e.department_id = d.department_id
ORDER BY d.name ASC;





--Q3
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'employees';


SELECT department_id, COUNT(*) AS num_employees, AVG(emp_salary) AS avg_salary
FROM employees
GROUP BY department_id;


ALTER TABLE employees 
ADD salary DECIMAL(10, 2);

-- Add sample data for the salary column
UPDATE employees 
SET emp_salary = CASE 
    WHEN emp_id = 1 THEN 3000
    WHEN emp_id = 2 THEN 4500
    WHEN emp_id = 3 THEN 5000
    ELSE 4000
END;


--Q1
DROP TABLE employees;
-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

-- Insert sample data into employees
INSERT INTO employees (emp_id, first_name, last_name, department_id)
VALUES 
    (1, 'John', 'Doe', 10),
    (2, 'Jane', 'Smith', 20);

-- Create departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert sample data into departments
INSERT INTO departments (department_id, name)
VALUES 
    (10, 'HR'),
    (20, 'Finance');

CREATE VIEW vw_employee_details AS
SELECT e.first_name, e.last_name, d.name AS department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id;

--Q2
IF OBJECT_ID('vw_work_hrs', 'V') IS NOT NULL
DROP VIEW vw_work_hrs;

SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME = 'work_hours';

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    pname VARCHAR(100)
);

-- Insert sample data into projects table
INSERT INTO projects (project_id, pname)
VALUES
    (101, 'Project A'),
    (102, 'Project B'),
    (103, 'Project C');

CREATE TABLE work_hours (
    emp_id INT,
    project_id INT,
    hours INT,
    PRIMARY KEY (emp_id, project_id),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);
SELECT * FROM employees WHERE emp_id IN (1, 2, 3);

INSERT INTO employees (emp_id, first_name, last_name, department_id)
VALUES
    (1, 'John', 'Doe', 10),
    (2, 'Jane', 'Smith', 20),
    (3, 'Alice', 'Johnson', 10);

INSERT INTO work_hours (emp_id, project_id, hours)
VALUES
    (1, 101, 40),
    (2, 102, 35),
    (3, 103, 45);


CREATE VIEW vw_work_hrs AS
SELECT e.fname, e.lname, p.pname, w.hours
FROM employees e
INNER JOIN work_hours w ON e.emp_id = w.emp_id
INNER JOIN projects p ON w.project_id = p.project_id
WHERE e.department_id = 5;


--Q3
CREATE VIEW vw_high_status_suppliers AS
SELECT *
FROM suppliers
WHERE status > 15
WITH CHECK OPTION;

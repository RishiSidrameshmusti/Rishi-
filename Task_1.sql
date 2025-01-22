/* task is Write a SQL query to select all columns 
from a table named employees.*/
create database partnership;
use partnership;
CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(50)
);

-- Insert values into the department table
INSERT INTO department (department_id, department_name, location)
VALUES 
    (1, 'Human Resources', 'Texas'),
    (2, 'Finance', 'San Francisco'),
    (3, 'Engineering', 'New York'),
    (4, 'Marketing', 'Boston');

-- Create the employee table
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT,
    salary DECIMAL(10, 2),
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

INSERT INTO employee (employee_id, first_name, last_name, department_id, salary, hire_date)
VALUES 
    (101, 'Rishi', 'Musti', 3, 90000.00, '2022-01-15'),
    (102, 'Gyanam', 'Bhalgat', 2, 75000.00, '2021-03-22'),
    (103, 'Vedant', 'Kanojiya', 2, 70000.00, '2020-07-10'),
    (104, 'Lobsang', 'Shakya', 3, 80000.00, '2023-06-01'),
    (105, 'Norzin', 'Shakya', 3, 60000.00, '2021-11-05');

use partnership;
select * from employee;
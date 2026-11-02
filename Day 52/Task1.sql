use sample;
CREATE TABLE employees (emp_id INT, emp_name VARCHAR(50),dept_id INT);
CREATE TABLE departments (dept_id INT,dept_name VARCHAR(50));
INSERT INTO employees VALUES(1, 'Alice', 101),(2, 'Bob', 102),(3, 'Charlie', 103),(4, 'David', NULL);
INSERT INTO departments VALUES (101, 'HR'),(102, 'IT'),(104, 'Finance');
select * from employees;
select * from departments;

-- LEFT JOIN (LEFT OUTER JOIN)
SELECT employees.emp_name, departments.dept_name,employees.dept_id, department.dept_id FROM employees
INNER JOIN departments ON empolyees.dept_id = departments.dept_id;
SELECT * FROM employees INNER JOIN departments ON employees.dept_id = departments.dept_id;
SELECT employees.emp_name, departments.dept_name FROM employees
LEFT JOIN departments ON employees.dept_id = departments.dept_id;
SELECT * FROM employees LEFT JOIN departments ON employees.dept_id = departments.dept_id;

-- RIGHT JOIN (RIGHT OUTER JOIN)
SELECT employees.emp_name, departments.dept_name FROM employees
RIGHT JOIN departments ON employees.dept_id = departments.dept_id;
SELECT * FROM employees RIGHT JOIN departments ON employees.dept_id = departments.dept_id;

-- FULL JOIN 
SELECT employees.emp_name, departments.dept_name FROM employees LEFT JOIN departments ON employees.dept_id = departments.dept_id;
SELECT employees.emp_name, departments.dept_name FROM employees RIGHT JOIN departments ON employees.dept_id = departments.dept_id;
SELECT employees.emp_name, departments.dept_name FROM employees LEFT JOIN departments ON employees.dept_id = departments.dept_id
UNION
SELECT employees.emp_name, departments.dept_name FROM employees RIGHT JOIN departments ON employees.dept_id = departments.dept_id;

-- CROSS JOIN
SELECT emp_name, dept_name FROM employees CROSS JOIN departments;
-- SELF JOIN
Create table Employee(empid int primary key,name varchar(50),mgrid int);
Insert into Employee values (1001,'Manish Agrahari',1001),(1002,'Deepti',1001),(1003,'Amit',1001),(1004,'Sandy',1002),(1005,'Ankit',1003);
SELECT * FROM employee;
SELECT e2.empid,e2.name AS EmployeeName,e2.mgrid, e1.name AS Manager FROM employee e1, employee e2 where e1.empid = e2.mgrid;

-- Practice Exercise

CREATE TABLE customer (customer_id INT PRIMARY KEY, customer_name VARCHAR(50),email VARCHAR(100), city VARCHAR(50),signup_date DATE);

CREATE TABLE orders ( order_id INT PRIMARY KEY,customer_id INT,order_date DATE,amount DECIMAL(10,2),status VARCHAR(20));

INSERT INTO customer VALUES

(1, 'Alice', 'alice@gmail.com', 'New York', '2023-01-10'),(2, 'Bob', 'bob@gmail.com', 'Chicago', '2023-02-15'),(3, 'Charlie', 'charlie@gmail.com', 'Dallas', '2023-03-20'),

(4, 'David', 'david@gmail.com', 'Miami', '2023-04-05'),(5, 'Eva', 'eva@gmail.com', 'Boston', '2023-05-12');

INSERT INTO customer VALUES

(6, 'Anto', 'anto@gmail.com', 'New York', '2023-01-10'),(7, 'Boby', 'boby@gmail.com', 'Chicago', '2023-02-15'),(8, 'Mark', 'Mark@gmail.com', 'Dallas', '2023-03-20'),

(9, 'Sam', 'sam@gmail.com', 'Miami', '2023-04-05'),(10, 'Jesy', 'jesy@gmail.com', 'Boston', '2023-05-12');

INSERT INTO orders VALUES

(101, 1, '2023-06-01', 250.00, 'Completed'),(102, 1, '2023-06-10', 150.00, 'Pending'),(103, 2, '2023-06-15', 300.00, 'Completed'),

(104, 3, '2023-06-20', 450.00, 'Cancelled'),(105, 6, '2023-06-25', 500.00, 'Completed');

INSERT INTO orders VALUES (106, 6, '2023-06-01', 250.00, 'Completed'),(107, 7, '2023-06-10', 150.00, 'Pending'),

(108, 8, '2023-06-15', 300.00, 'Completed'),(109, 9, '2023-06-20', 450.00, 'Cancelled'),(110, 10, '2023-06-25', 500.00, 'Completed');

select * from customer;
select * from orders;

-- Write a query to Returns customers who have orders

SELECT c.customer_name, o.order_id, o.amount ,c.customer_id , o.customer_id
FROM customer c INNER JOIN orders o ON c.customer_id = o.customer_id;

-- Shows all customers, even those with no orders

SELECT c.customer_id , o.customer_id,c.customer_name, o.order_id, o.amount FROM customer c LEFT JOIN orders o ON c.customer_id = o.customer_id;
 
-- Write a query to Includes orders without a customer (customer_id = 6)

SELECT c.customer_name, o.order_id, o.amount FROM customer c RIGHT JOIN orders o

ON c.customer_id = o.customer_id where c.customer_id!=6 ;

-- Write a query to display all records from both tables

SELECT c.customer_name, o.order_id, o.amount FROM customer c LEFT JOIN orders o ON c.customer_id = o.customer_id

UNION
SELECT c.customer_name, o.order_id, o.amount FROM customer c RIGHT JOIN orders o ON c.customer_id = o.customer_id;
-- Write a query to display the customers from the same city

SELECT a.customer_name AS customer1, b.customer_name AS customer2, a.city FROM customer a JOIN customer b
ON a.city = b.city AND a.customer_id <> b.customer_id;


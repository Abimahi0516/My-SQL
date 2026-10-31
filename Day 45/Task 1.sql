create database assignment;
use assignment;

-- Customer Table ---
create table customer ( id int, name char(30), email varchar(30), phone varchar(15), address varchar(100));
desc customer;
insert into customer values 
(101, 'Abi', 'abi@gmail.com', '9876543210', 'kanna Street, Chennai'),
(102, 'Jey', 'jey@gmail.com', '9876576210', 'mgr Street, Chennai'),
(103, 'kathir', 'kathir@gmail.com', '9236543210', 'jjk Street, Chennai'),
(104, 'Mahi', 'mahi@gmail.com', '9256903210', ' koyambedu, Chennai'),
(105, 'viji', 'viji@gmail.com', '9756783410', ' kk street Chennai');

select*from customer;
select id, name from customer;
select * from customer where name = 'Sam';

alter table customer add gender char(10);
desc customer;
alter table customer drop gender;
desc customer;
alter table customer modify phone bigint;
desc customer;

SET SQL_SAFE_UPDATES = 0;
update customer set address = 'MGR Street, Mayiladuthurai' where id = 105;
delete from customer where id = 104;
select*from customer;

delete from customer;
show tables;
drop table customer;


--  Employee Table ---
create table Employee ( empid int, empname varchar(30), role char(15), salary int, email varchar(30));
show tables;
insert into employee values
(101, 'Abi', 'Developer', 35000, 'arun@gmail.com'),
(102, 'Banu', 'full stack', 60000, 'priya@gmail.com'),
(103, 'Kathir', 'Manager', 50000, 'kumar@gmail.com'),
(104, 'Mahi', 'Designer', 40000, 'divya@gmail.com'),
(105, 'Rahul', 'software Developer', 45000, 'rahul@gmail.com');
select*from employee;
select empid, empname, role from employee;
select * from employee where salary <  40000;

alter table employee add gender char(10);
desc employee;
alter table employee drop gender;
desc employee;
alter table employee modify role char(20);
desc employee;

SET SQL_SAFE_UPDATES = 0;
update employee set salary = salary + 500;
delete from employee where empid = 104;
select*from employee;

delete from employee;
show tables;
drop table employee;


-- Student Table ---
create table Student ( id int, name varchar(30), age int, department varchar(30), mark int);
show tables;
desc Student;
insert into Student values 
(1, 'Jey', 23, 'CSE', 87),
(2, 'Mubin', 22, 'IT', 70),
(3, 'Gogul', 24, 'ECE', 79),
(4, 'vaji', 25, 'MECH', 80),
(5, 'Mani', 21, 'CSE', 90);
select* from Student;
select name, mark from Student;
select * from Student where mark > 80;

alter table Student add email varchar(30);
desc Student;
alter table Student drop email;
alter table Student modify name varchar(20);

update Student set mark = mark + 2;
select* from Student;
delete from Student where name = 'Mani';

delete from Student;
show tables;
drop table Student;

-- Staff Table-- 
create table Staff ( staffid int, staffname varchar(30), department char(20), salary int, phone varchar(15));
show tables;
desc Staff;

insert into Staff values
(201, 'Joys', 'HR', 28000, '9876543210'),
(202, 'Abi', 'IT', 35000, '9876543211'),
(203, 'Chandru', 'Finance', 32000, '9876543212'),
(204, 'Mahi', 'Sales', 30000, '9876543213'),
(205, 'Vaji', 'IT', 40000, '9876543214');

select * from Staff;
select staffid, staffname, department from Staff;
select * from Staff where salary > 30000;

alter table Staff add gender char(10);
desc Staff;
alter table Staff drop gender;
desc Staff;
alter table Staff modify department char(30);
desc Staff;

SET SQL_SAFE_UPDATES = 0;
update Staff set salary = salary + 1000;
delete from Staff where staffid = 204;
select * from Staff;

delete from Staff;
show tables;
drop table Staff;


-- Product Table ---
create table Product ( productid int, productname varchar(30), category char(20), price decimal(10,2), stock int);
show tables;
desc Product;

insert into Product values
(301, 'Laptop', 'Electronics', 45000.00, 10),
(302, 'Mobile', 'Electronics', 18000.00, 25),
(303, 'Chair', 'Furniture', 2500.00, 15),
(304, 'Table', 'Furniture', 5000.00, 8),
(305, 'Headphones', 'Accessories', 1500.00, 30);

select * from Product;
select productid, productname, price from Product;
select * from Product where price > 5000;

alter table Product add brand varchar(30);
desc Product;
alter table Product drop brand;
desc Product;
alter table Product modify productname varchar(50);
desc Product;

SET SQL_SAFE_UPDATES = 0;
update Product set price = price + 500;
delete from Product where productid = 303;
select * from Product;

delete from Product;
show tables;
drop table Product;

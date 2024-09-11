

#Name Kiran Gulabsingh Rajput
#College: PES college of Engineering Chha. Sambhajinagar



-- CREATE A DATABASE CALLED  BANK
create database bank;
-- CREATE A TABLE CUSTOMER WITH THE FOLLOWING FIELDS

-- CID
-- CNAME
-- BALANCE
-- DOB
-- INTEREST
-- CITY
-- GENDER
use bank;
create table bank.customer( cid int primary key, cname varchar(25), balance decimal, dob date, interest decimal, city varchar(20), gender char);


-- Q1) INSERT FIVE RECORDS
Insert into customer values(1,'karn', 12990.45, 2001, 8254.03, 'Chh. Sambhajinagar','m'),
							(2,'raju', 59990.45, 2003, 7524.03, 'Dharashiv','m'),
                            (3,'mayu', 125990.45,2002, 2454.03, 'Chh. Sambhajinagar','f'),
                            (4,'tina', 25290.45, 2005, 22254.03, 'pune','f'),
                            (5,'arsh', 33590.45, 2004, 30334.03, 'Prayagraj','m');
                            
                            
-- Q2) VIEW ALL THE RECORDS
select * from customer;

-- Q3) VIEW ALL THE CUSTOMER DETAILS WHO BELONG TO THE SPECIFIC CITY
select * from customer where city="Chh. Sambhajinagar";

-- Q4) VIEW ALL THE CUSTOMER WHOOSE BALANCE IS MORE THEN 40000
select * from custower where balance > 40000;

-- Q5) VIEW ALL THE CUSTOMER WHOOLSE BALANCE IN THE RANGE OF 30000 TO 70000
select * from customer where balance between 30000 and 70000;

-- Q6) VIEW ALL THE CUSTOMER DETAILS WHO ARE IN THE CITY BLORE(Bangalore)
select * from customer where city='Banglore';

-- Q7) GET CID, CNAME FROM CUSTOMER DETAILS WHOSE CITY='Delhi' and gender='Female'
select cid, cname from customer where city='Delhi' and gender ='f'; 

-- Q8) GET ALL THE CUSTOMER DETAILS WHOSE NAME ENDING WITH S;
select * from customer where cname like '%s';


-- q9) update the  interest of the customer if balance is more than 25000 by 2.5 %

update customer set intrest =intrest+2.5 where balance >25000;


-- Assignment 4-SQL Aggreate functions and claues
-- min();
-- max();
-- avg();
-- count();




-- create a database called student;
create database student;


-- a) create a table called marks(sid, sname, m1,m2,m3, tot(default 0, avg default(0), dept)
create table marks( sid int primary key, sname varchar(25), m1 int,m2 int, m3 int, total int default 0, avg float default 0, dept varchar(50));

-- b) insert values for sid,sname, m1,m2,m3;
INSERT INTO marks (sid, sname, m1, m2, m3, dept) VALUES (1, 'kiran', 80, 75, 85, 'CSE'),(2, 'raj', 70, 65, 75, 'ISE'),(3, 'jay', 85, 90, 95, 'ECE');

-- c) update the tot of all the three subjects of all the students;
UPDATE marks SET total = m1 + m2 + m3;
    
-- d) update the avg of all the students;
UPDATE marks SET avg = (m1 + m2 + m3) / 3.0;

-- e) find the highest marks in m1 subject
SELECT MAX(m1) AS highest_m1 FROM marks;

-- f) find the lowest marks in m3 subject
Select min(m3) AS lowest_marks from marks;

-- g) find the max tot_marks of all the students
SELECT MAX(total) AS max_tot_marks FROM marks;
-- h) find the min_avg of all the students

-- i) find the max(tot_marks) based on each dept
select dept, max(total) AS max_tot_marks group by  dept;

-- j) find the min(avg_marks) based on each deept and also sort the records by min avg;
select dept, MIN(avg) AS min_avg_marks FROM marks GROUP BY dept ORDER BY min_avg_marks;

-- k) find the total no.of students in cse dept;
select COUNT(*) AS total_students_cse FROM marks WHERE dept = ‘CSE’;




-- Cricket databases
-- players
-- pid pname norunsscored noomatches
-- 1 Rohith 10000 100
-- 2 Virat 15000 200

-- create a procedures which gives the details of playes who has scored highets runs
-- without parameter
-- with in parameter
-- wiht out parameter
-- with inout parameter



-- Retrieve all employees whose salary is greater than the average salary.
select * from employees where salary > (select AVG(salary) from employees);

-- Find the average salary for each department.
select deptid, AVG(salary) AS avgsalary FROM employees GROUP BY depid;

-- Retrieve all orders placed by customers in a specific city.
select * from orders where cid IN (select cid from customers where city = 'sambhajinagar');

-- Retrieve all employees with salaries greater than the average salary of their department.
SELECT * FROM employees  JOIN ( SELECT deptid, AVG(salary) as avgsalary FROM employees group by deptid) deptavg on dptavg = deptavg.deptid where salary > deptavg.avgsalary;

-- Retrieve the employee with the highest salary.
select * from employees where salary = (select MAX(salary) from employees);




-- 2. From the following table, write a SQL query to find out which employees have the same  designation as the employee whose ID is 169. Return first name, last name, department ID and job  ID. 
select firstname, lastname, deptid, jobid from employees where jobid = (select jobid from employees where empid = 169);


-- 3.From the following table, write a SQL query to find those employees whose salary matches the  lowest salary of any of the departments. Return first name, last name and department ID.
select firstname, lastname, deptid from employees where salary = (select MIN(salary) FROM employees);


-- 4.From the following table, write a SQL query to find those employees who earn more than the  average salary. Return employee ID, first name, last name. 
select empid, firstname, lastname from employees where salary > (select AVG(salary) from employees);


-- 5. From the following table, write a SQL query to find those employees who report to that manager  whose first name is ‘Payam’. Return first name, last name, employee ID and salary. 
select firstname, lastname, empid, salary from employees join employees on manid = empid where firstname = 'Payam';


-- 6. From the following tables, write a SQL query to find all those employees who work in the Finance  department. Return department ID, name (first), job ID and department name. 
-- need to work on two tables
select deptid, firstname, jobid, deptname from employees join departments on deptid = deptid where deptname = 'Finance';








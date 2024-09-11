-- Nested query in single state

-- SubQuery in SQL :
-- A subquery  or nested query or inner query allow user to perform/create complex queries
-- it involve two select statements 
-- syntax 
-- query inside another query


use  collegeData;

 #create table courses(stud_id int primary key, courses varchar(20));
#create table student(stud_id int primary key, sname varchar(20));

#insert into student values(101,'kiran'),(102,'raaj'),(103,'Arsh'),(104,'veer');
 #insert into courses values(101,'science'),(102,'english'),(105,'hindi'),(106,'social');

select * from student ;
select Avg(stud_id) from student;
select avg(sname) from student;

select sum(stud_id)/count(stud_id) from student;
SELECT * FROM student WHERE Stud_id in(SELECT MAX(stud_id) FROM STUDENT);



-- quesition1:
-- find the name of student who scored more then the class average

-- STEP1(inner Query):

SELECT AVG(stud_id) FROM student;
	
-- step2:
SELECT SNAME, stud_id from student WHERE stud_id>(SELECT AVG(stud_id) from student);



-- question2:
 
-- find the name of all the student with even id
-- step1: 
select stud_id from student where stud_id%2=0;

-- final query
SELECT SNAME, stud_id from student where stud_id >( select stud_id from courses where courses="english");

-- find the max marks of the student(clauses OR subquries)
-- fins the max marks of student who belongs to city="delhi"

select * from student where stud_id>(select max(stud_id) from student where sname ="arsh") AND sname ='arsh';

-- task:

-- retrive all employee whose salary is greater then the average salary
select * from employees where salary >(select AVG(salary) from employees);

-- find the average salary for each department
select * from employee where ;

-- retrive the all order placed by customer in spacific city
select * from orders where city ="pune";

-- retrive the all employee with salaries greater than the aveg salary of their department
select * from employees where salary>(select AVG(salary) from employee in ()

-- retrive the employee with the highest salary
select * from student order by salary DESC limit 1;

-- retrive all orders placesd by customer in a spacific city
SELECT *
FROM orders 
JOIN customers ON orders.customer_id = customer.customer_id
WHERE customer.city = 'pune';








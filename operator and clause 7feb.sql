

create database company;
use company;
create table employee_details( id int primary key, name varchar(24), city varchar(22), salary int);


Insert into employee_details values (2,"raaj","dharashiv",212000);
Insert into employee_details values (65,"raaj","dharashiv",212000);

Insert into employee_details values (3,"natraj","kerala",2144560);
Insert into employee_details values (4,"sairaj","Dharavi",72000);
Insert into employee_details values (5,"viraj","Pune",612000);
Insert into employee_details values (6,"jay","dhule",562000);
Insert into employee_details values (7,"viraj","Pune",612000);
Insert into employee_details values (8,"viraj","Pune",612000);

select * from employee_details where salary in(select max(salary) from employee_details);

#date  7th feb

#union all
#it combines the data of two table includes the duplicate the values

#Intersect 
#intersect it is show only comon data

#minus operator
#it combine the table and  minus the common values

select salary from employee_details;
select +salary from employee_details; 
select salary from employee_details;


-- clauses are in built function in sql
-- clause are in built in funnction in sql 

-- SELECT Clause: Used to specify the columns you want to retrieve from a table.
-- FROM Clause: Specifies the table from which you want to retrieve data.
-- WHERE Clause: Filters rows based on a specified condition.
-- GROUP BY Clause: Groups rows that have the same values into summary rows.
-- HAVING Clause: Filters group rows that have specified conditions.
-- ORDER BY Clause: Sorts the result set in ascending or descending order.
-- LIMIT Clause: Limits the number of rows returned in the result set.
-- JOIN Clause: Specifies how to combine rows from two or more tables based on a related column between them.
-- INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN: Different types of join clauses for specifying different types of joins.
-- ON Clause: Specifies the join condition between tables in a JOIN operation.
-- UNION Clause: Combines the result sets of two or more SELECT statements.
-- DISTINCT Clause: Returns unique values in the result set by eliminating duplicate rows.
-- IN Clause: Specifies multiple values in a WHERE clause.
-- LIKE Clause: Searches for a specified pattern in a column.
-- BETWEEN Clause: Specifies a range to test column values against.
-- CASE Clause: Defines conditions and their corresponding result expressions.
-- ORDER BY Clause: Sorts the result set based on specified columns.
-- GROUP_CONCAT(): Aggregates and concatenates the values into a single string.


-- distinct is used to remove the duplicate values it only show the uniqu values
select distinct city from employee_details ;
select distinct city, name from employee_details where id>=3;


SELECT * FROM employee_details;
SELECT * FROM employee_details ORDER BY salary ;		-- ASC AND DESC ASECENDING AND DESCENDING 


-- limit keyword 
select * from employee_details limit 5;
select * from emplloyee limit 5;

select distinct city from employee_details order by city ASC limit 5;

-- to get the highrest salary from city
select * from employee_details order by salary desc limit 1;



select * from student;

Create database studentdb;
use studentdb;

show tables;
-- create table student( int )
select * from student;

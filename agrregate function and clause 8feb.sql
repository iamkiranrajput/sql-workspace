-- group by clause used with aggregate function 

SELECT CITY, COUNT(*) as num_employees FROM employee_details GROUP BY CITY;
SELECT city, COUNT(*) as num_employees FROM employee_details GROUP BY city HAVING COUNT(*) > 1;
SELECT * FROM employee_details order by salary desc LIMIT 2 ;

SELECT salary, COUNT(*)
FROM employee_details
GROUP BY salary
HAVING COUNT(*) > 1;

use company;
select * from employee_details;

-- aggrigate functuon

-- count()
select count(name), count(city) from employee_details;

select sum(salary) as sum_of_salary from employee_details where name="viraj";
select sum(salary) as name from employee_details where city="pune";
select sum(salary) as salary_count from employee_details where city in("pune","dhule");

select avg(salary) from employee_details where  city="pune";
select min(salary), name from employee_details;
use company;
	
select name, max(salary) from employee_details group by city;



create database employee;
use employee;

desc employee.emp;
insert into emp values(6,"kalayni","student", 13)
,(7,"asshish","Scientist",14),(8,"kanchan","Doctor",24),(9,"sudarshan","doctor",44),(10,"sima","Actor",23);

select ocup, sum(working_hr) from emp where ocup in("Scientist","doctor");
select sum(working_hr), count(ocup) from emp where ocup="doctor";
select sum(working_hr), count(ocup) from emp where ocup="doctor";

select avg(working_hr) from emp; 


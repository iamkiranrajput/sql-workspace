-- sql joins 
-- join is used wto combine data or rows/ records from two or more tables 
-- base on the related column

-- types of joins
-- 1. inner join 
-- 2. left join
-- 3. right join
-- 4. full join the sql dosent support 
create database collegeData;
use  collegeData;

create table courses(stud_id int primary key, courses varchar(20));
create table student(stud_id int primary key, sname varchar(20));

insert into student values(101,'kiran'),(102,'raaj'),(103,'Arsh'),(104,'veer');
insert into courses values(101,'science'),(102,'english'),(105,'hindi'),(106,'social');
 
-- it will gives you all the common or matching record from the both table
select * from student inner join courses on student.stud_id=courses.stud_id;


select * from student inner join courses on student.stud_id=courses.stud_id;



-- it will return all the record from left table and matched record from right table
select * from student left join courses on student.stud_id=courses.stud_id;

-- it will return all the record from right table and matched record from left table
select * from student right join courses on student.stud_id=courses.stud_id;

-- its not working
select * from student full join courses on student.stud_id=courses.stud_id;


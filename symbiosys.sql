   CREATE TABLE JSPProject.employee (
   id int,
   first_name varchar(20) DEFAULT NULL,
   last_name varchar(20) DEFAULT NULL,
   username varchar(250) DEFAULT NULL,
   password varchar(20) DEFAULT NULL,
   address varchar(45) DEFAULT NULL,
   contact varchar(45) DEFAULT NULL,
   PRIMARY KEY (id));
   
   
   use  JSPProject;
   
   create database JSPProject;
   select * from employee;
   
   #alter TABLE employee MODIFY COLUMN id INT AUTO_INCREMENT PRIMARY KEY;
   use studentdb;
   
   select * from answer;
   create database test;
   
   use test;
   show tables;
   select * from project_employee;
   select * from employee_project;
   select * from employee;
   select * from eproject;
   
   select * from alien;
   
   create database book;
   create database hibernateweb;
   show tables;
   
   select * from student1;
      select * from student_address;




   use myhiber;
   show tables;
   
   create database springorm;
   
   
   ALTER TABLE Student_address MODIFY COLUMN image MEDIUMBLOB;

   create database mapping;
   use mapping;
   show tables;
   
   select * from question;
      select * from answer;

   
   desc question;
   desc answer;
   
   
drop table answer;


 select * from employee;
      select * from project;
            select * from employee_project;

use myhiber;


select * from notes;
truncate notes;
	
select * from student;


-- ------------------------------------------------------- 
create database ecommerce;
use ecommerce;

 


create database localdb;
use localdb;
show tables;

select * from course_dtls;

use springjdbc;

select * from student;

create database learningSpring;
use learningSpring;
create table Customer (

custId int primary key auto_increment,
custUname varchar(50),
custAddr varchar(100),
mobileNo int
);	

select * from Customer;
use learningspring;
show tables;
select * from student_data;
insert into books values(1,"kiran","java");

create database hospital;
use hospital;
create table user_dtls(id int primary key auto_increment, full_name varchar(20),email varchar(30), password varchar(20));
select * from user_dtls;
create database studentinfo;

use studentinfo;

create table student (sid int(10) primary key, sname varchar(15), sage int(2), sdob date, scity varchar(20));

desc student;

insert into student (sid, sname,sage,sdob,scity) values(1,'Kiran',22,'2001-05-28','Chha. Sambhajinagar');
insert into student (sid, sname,sage,sdob,scity) values(2,'Kiran',22,'2001-05-28','Chha. Sambhajinagar'),
														(6,'Raaj',22,'2001-01-22','Dharashiv'),
														(3,'Veer',21,'2002-12-01','Latur'),
														(4,'Shiv',22,'2002-11-12','Delhi'),
														(5,'Navya',20,'2003-12-12','Mumbai');

select * from student;
select * from student where sid=2;
select * from student where scity Like 'Ch%';






Delete from student where sid =2;

update student set scity='Nashk' where sid =4;

Alter table student Add column college varchar(30) default 'PES'; 
Alter table student change college scollege varchar(30);





create table studenttable (regno int(10) primary key, name varchar(15), peercentage int(2));
desc studenttable;
show tables;

select * from login ;


use test;
show tables;

select * from atable;
select * from qtable;
truncate qtable;


ALTER TABLE atable DROP FOREIGN KEY FK9trwke4ocl7pso1v471jgvv66;
TRUNCATE TABLE atable;

show tables;








CREATE DATABASE demo;
USE demo;

create table users (
	id  int(3) NOT NULL AUTO_INCREMENT,
	name varchar(120) NOT NULL,
	email varchar(220) NOT NULL,
	country varchar(120),
	PRIMARY KEY (id)
);

delete from student;

create database behealthy;
use behealthy;

create table registration (id int primary key auto_increment, username varchar(26), password varchar(25));

select * from registration;



create database security_db;
use security_db;

select * from employee;
show tables;






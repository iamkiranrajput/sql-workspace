#primary key is a combination of not null and unique 
#in table only one column/attribute can be primary key

create database carnes_varacity;
use carnes_varacity;
Create table empl(eid int primary key,ename varchar(20) not null);

INSERT INTO empl values(1,"kiran"),(2,"raj");

#auto increment is used with primary key

create table empl2(eid int primary key auto_increment, ename varchar(20) not null);
Insert into empl2 (ename) values ("kiran"),("raaj");

select * from empl2;

#enum Constraint
#it is short form of enumration 
#enum is lake ana object which allows us to enter multiple value for perticuler column of field
#with the help of enum we can pass multiple value
#it also a spacial types of data type

#enum type is used to define a column that can only contain a sett of predefined value it i a speciic type to handlr the fixed set of value
create table person (pid int primary key, pname varchar(20), designation enum('SE','Software Faculty','freelancer'));
insert into person values(100, "kirana", "SE"),(200,"rohit","freelancer"),(300,"rohit","Software Faculty");
select * from person;
desc person;

#foreign key 
#primary key
#this constraint is used for linking two tables
#FK is also known as refrencing key
#fk key need primary ky without primary key

#create two table person and order

Create table customer(pid int not  null primary key, name varchar(45) not null, age int, city varchar(30));

create table orders(oid int not null primary key, ordernum int not null, pid Int, foreign key(pid) references person(pid));

desc orders;
desc customer;

create database RestAPITask;

create database moviesystem;

truncate table user.authorities;
create user "veer@rajput" identified by "veerrajput";
show grants for "veer@rajput";

grant select on *.* to "veer@rajput";
grant insert on db1.* to "veer@rajput";
grant delete on db1.* to "veer@rajput";


create database db1;
use db1;
create table employee(id int primary key,fname varchar(24), deptid int, designation varchar(25) ,workinghour int);
insert into employee values(4,"veer",123,"trainer", 12);

create table trainer(tid int primary key,tname varchar(24), deptid int, designation varchar(25) ,workinghour int);

create user "kiran" identified by "kiran123";


show grants for "kiran@localhost";
show grants;
grant select on *.* to "kiran";


-- creating the user with password here identifier means password
create user "kiran@local" identified by "kiranlocal";
show grants for "kiran@local";

-- grant to get the data from  the table
grant select on *.* to "kiran@local";

FLUSH PRIVILEGES;


-- let us grant the permission to kiran to inesert the data in table employee (ordinary user) 
grant insert on db1.employee to "kiran@local";
	
-- update permission; giving the permission to the delete the record from table
grant delete on db1.employee to "kiran@local";
show grants;


-- for checking the all are working effectively then login with another user and try to perform the above queries 
-- user "kiran@local"

show databases;
use db1;
select * from trainer;
create table employee(id int primary key,fname varchar(24), deptid int, designation varchar(25) ,workinghour int);
show tables;
show grants for "kiran@local";
insert into trainer values(3,"raj",222,"trainer", 7);
select * from employee;



revoke select on db1.employee from "kiran@local";
-- by default user have the permission to get the data from the table we cannot revoke this permission 
-- Revoke is used to undo the operation or take back the permission which givent to the user 

revoke insert on db1.employee from "kiran@local";
-- now user kiran@local caannot able to insert the data in the perticuler table
show  grants for "kiran@local";

show  grants for "veer@rajput";


-- _________________________________________________________________________________________________________________________________
-- mysql views
-- view is virtual table
-- view is help us to create the virtual table of alreaady existing table

use db1;

select * from employee ;
create view department as select id, deptid, designation, workinghour from employee;

select * from department;
-- it has created the one another table name department 

select * from employee;
insert into department values(121,22,"database admin", 8);
-- if insert the data in the department it will reflet in the employee




-- if i perform any modification in any table department or employee it will reflect the both the table
update employee set fname="kiran" where id=2;
delete from department where id =2;



desc department;
desc employee;



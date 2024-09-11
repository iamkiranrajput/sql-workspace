
create database company;
use company;
create table employee_details( id int primary key, name varchar(24), city varchar(22), salary int);


Insert into employee_details values (2,"raaj","dharashiv",212000);
Insert into employee_details values (3,"natraj","kerala",2144560);
Insert into employee_details values (4,"sairaj","Dharavi",72000);
Insert into employee_details values (5,"viraj","Pune",612000);
Insert into employee_details values (6,"jay","dhule",562000);
Insert into employee_details values (7,"viraj","Pune",612000);
Insert into employee_details values (8,"viraj","Pune",612000);


SELECT * FROM  employee_details where salary>10000;
SELECT * FROM employee_details where city="KERALA";


#sql Logical operators
#and
#or
#not
#in
#not in
#between
#like
#set operator:UNION ,UNION ALL ,intersect etc.
#unary positive
#unary negative

select * from employee_details;
select *  from employee_details where NAME="kiran";
select * from employee_details where name="raaj" and city="dharashiv" and salary=345;

#both and & or in one query
select *  from employee_details where NAME="kiran" and city="sambhajinagar" or salary>72000;
select *  from employee_details where (NAME="kiran" and city="sambhajinagar") or (salary=72000);
select *  from employee_details where (NAME="kiran" and city="s") or (salary>7000);

#mysql in operator: it is used to reduce the usage of multiple or condition 
select * from employee_details where salary=22000 or salary=72000 or salary=10000;
select * from employee_details where salary in(22000,72000,10000);

#not operator and not in operator
select * from employee_details where not salary=22000;
select * from employee_details where not salary=22000 and city not in ("pune","kerala", "banglore");
select * from employee_details where salary not between 30000 and 80000;

#like operator 
#we can provide the pattern according to the our requarment it willl only show the output which matches given pattern

select * from employee_details where name like 'a%';  	#start with a
select * from employee_details where name like 'a%z'; 	 #start with a and with z
select * from employee_details where city like '%e' and salary>2300; 	#ends with e
select * from employee_details where city NOT like '_a%';
select * from employee_details where name not in ('kiran','raaj');

select * from employee_details where name like 'k%n' and city in("banglore", "pune") or salary between 2000 and 500000;

#set operator






#Operators in sql 

SELECT empsalary+empMonthBonus AS totalsalary from employee;

use sakila;
select * from payment;

select payment_id,amount/2 from payment;
select amount,amount/2 as halfsalary from payment;
select amount+22 as increment from payment;
 select  avg(amount) as averege from payment;


#between operator
#to get the data in the between range

select * from employee_details where salary between 50 and 30000;





--------------------- Hw_6 SQL Functions and Group by - Exercises, Practice, Solution------------

-- 1. From the following table, write a SQL query to calculate total purchase amount of all orders.
 -- Return total purchase amount.

 select * from [W3Resource].[Inventory].[Orders]
 select sum(purch_amt) as sum from [W3Resource].[Inventory].[Orders]

 -- From the following table, write a SQL query to calculate the average purchase amount of all orders.
 -- Return average purchase amount. 

 select avg(purch_amt) as Average from [W3Resource].[Inventory].[Orders]
 
-- 3. From the following table, write a SQL query that counts the number of unique salespeople.
-- Return number of salespeople.

select count(distinct salesman_id) as count_dist from [W3Resource].[Inventory].[Orders]

-- 4. From the following table, write a SQL query to count the number of customers. 
-- Return number of customers.

select count(cust_name) as count_cust from [W3Resource].[Inventory].[Customer]

-- 5. From the following table, write a SQL query to determine the number 
-- of customers who received at least one grade for their activity.  

select count(cust_name) as count_cust from [W3Resource].[Inventory].[Customer]
where grade is not null

-- 6. From the following table, write a 
-- SQL query to find the maximum purchase amount. 
 select max(purch_amt) as Max_putch from [W3Resource].[Inventory].[Orders]

 -- 7. From the following table, write a 
 -- SQL query to find the minimum purchase amount. 
 
select min(purch_amt) as Min_putch from [W3Resource].[Inventory].[Orders]

-- 8. From the following table, write a SQL query 
-- to find the highest grade of the customers in each city. Return city, maximum grade

select city, max(grade) as max_grade from [W3Resource].[Inventory].[Customer]
group by city
order by max_grade desc

-- 9. From the following table, write a SQL query to find the 
-- highest purchase amount ordered by each customer. 
-- Return customer ID, maximum purchase amount. 

select customer_id, max(purch_amt) as max_purch from [W3Resource].[Inventory].[Orders]
group by customer_id

-- 10. From the following table, write a SQL 
-- query to find the highest purchase amount ordered 
-- by each customer on a particular date.
-- Return, order date and highest purchase amount.

select customer_id, ord_date, max(purch_amt) as max_purch from [W3Resource].[Inventory].[Orders]
group by customer_id, ord_date

-- 11. From the following table, write a SQL query to determine 
-- the highest purchase amount made by each salesperson on
-- '2012-08-17'. Return salesperson ID, purchase amount  

select salesman_id, max(purch_amt) as max_purch from [W3Resource].[Inventory].[Orders]
where ord_date = '2012-08-17' 
group by salesman_id

-- 12. From the following table, write a SQL query to find the 
-- highest order (purchase) amount by each customer on a 
-- particular order date. Filter the result by highest order 
-- (purchase) amount above 2000.00. Return customer id, 
-- order date and maximum purchase amount.

select customer_id, ord_date, max(purch_amt) as max_purch from [W3Resource].[Inventory].[Orders]
where purch_amt > 2000
group by customer_id, ord_date

-- 13. From the following table, write a SQL query to find the 
-- maximum order (purchase) amount in the range 2000 - 6000 
-- (Begin and end values are included.) by combination of each
-- customer and order date. Return customer id, order date and
-- maximum purchase amount.

select customer_id, ord_date, max(purch_amt) as max_purch from [W3Resource].[Inventory].[Orders]
where purch_amt >= 2000 and purch_amt <= 6000
group by customer_id, ord_date

-- 14. From the following table, write a  SQL query to find the 
-- maximum order (purchase) amount based on the combination of
-- each customer and order date. Filter the rows for maximum 
-- order (purchase) amount is either 2000, 3000, 5760, 6000. 
-- Return customer id, order date and maximum purchase amount. 

select customer_id, ord_date, max(purch_amt) as max_purch from [W3Resource].[Inventory].[Orders]
-- where purch_amt = 2000 or purch_amt = 6000 or purch_amt = 5760 or purch_amt = 3000
group by customer_id, ord_date
having max(purch_amt) in (2000, 3000, 5760, 6000)

-- 15. From the following table, write a SQL query to 
-- determine the maximum order amount for each customer. 
-- The customer ID should be in the range 3002 and 3007
-- (Begin and end values are included.). 
-- Return customer id and maximum purchase amount.

select customer_id, max(purch_amt) as max from [W3Resource].[Inventory].[Orders]
where customer_id >=3002 and customer_id <= 3007
group by customer_id

-- 16

select customer_id, max(purch_amt) as max from [W3Resource].[Inventory].[Orders]
where customer_id between 3002 and  3007
group by customer_id
having max(purch_amt) > 1000

-- 17

select salesman_id, max(purch_amt) as max from [W3Resource].[Inventory].[Orders]
-- where salesman_id between 5003 and  5008    or
group by salesman_id
having salesman_id between 5003 and  5008 

-- 18.

select count(salesman_id) as count_17 from [W3Resource].[Inventory].[Orders]
where ord_date = '2012-08-17'

-- 19

select count(*) as count_sales from [W3Resource].[Inventory].[Salesman]
-- where city is not null

-- 20

select  salesman_id, ord_date, count(*) as num_orders from [W3Resource].[Inventory].[Orders]
group by salesman_id, ord_date

-- 21 

select avg(pro_price) as avg_pricde from [W3Resource].[dbo].[item_mast]

-- 22

select count(*) as prod from [W3Resource].[dbo].[item_mast]
where pro_price >= 350


-- 23

select distinct pro_com, avg(pro_price) as avg_price from [W3Resource].[dbo].[item_mast]
group by pro_com

-- 24

create table emp_department (dpt_code int, dpt_name varchar(30), dpt_allotment decimal(10,2))
insert into emp_department values (57 , 'IT', 65000),
                                  (63, 'Finance', 15000),
                                  (47, 'HR', 240000),
                                  (27, 'RD', 55000),
                                  (89, 'QC', 75000)
select * from emp_department

select sum(dpt_allotment) from emp_department

-- 25

select  emp_dept, count(*) as count from [W3Resource].[dbo].[emp_details]
group by emp_dept




 





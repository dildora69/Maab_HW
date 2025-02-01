---------HW2 - Using Boolean and Relational operators -----

-- 1. Customers with Grade > 100
select customer_id, cust_name, city, grade, salesman_id from [W3Resource].[Inventory].[Customer]
where grade > 100

--  2. New York Customers with Grade > 100

select customer_id, cust_name, city, grade, salesman_id  from [W3Resource].[Inventory].[Customer]
where city = 'new york' and grade > 100

-- 3. New York or Grade > 100

select customer_id, cust_name, city, grade, salesman_id  from [W3Resource].[Inventory].[Customer]
where city = 'new york' or grade > 100 

-- 4. New York or Not Grade > 100

select customer_id, cust_name, city, grade, salesman_id  from [W3Resource].[Inventory].[Customer]
where city = 'new york' or not grade > 100

-- 5. Not New York and Not Grade > 100

select customer_id, cust_name, city, grade, salesman_id  from [W3Resource].[Inventory].[Customer]
where city != 'new york' and not grade > 100
-- or

select customer_id, cust_name, city, grade, salesman_id  from [W3Resource].[Inventory].[Customer]
where not(city = 'new york' or  grade > 100)

-- 6. Exclude Specific Orders

select ord_no, purch_amt, ord_date, customer_id, salesman_id  from [W3Resource].[Inventory].[Orders]
where not ((ord_date = '2012-09-10' and salesman_id > 5005) or purch_amt > 1000)

-- 7. Salespeople with Commission Range 0.10-0.12

select salesman_id, name, city,  commission from [W3Resource].[Inventory].[Salesman]
where commission between 0.10 and 0.12
-- or
select salesman_id, name, city,  commission from [W3Resource].[Inventory].[Salesman]
where commission > 0.10 and commission < 0.12

-- 8. Orders with Amount < 200 or Exclusions

select ord_no, purch_amt, ord_date, customer_id, salesman_id  from [W3Resource].[Inventory].[Orders]
where purch_amt < 200 or not (ord_date >= '2012-02-10' and customer_id < 3009)  

-- 9. Conditional Orders Exclusions

select ord_no, purch_amt, ord_date, customer_id, salesman_id  from [W3Resource].[Inventory].[Orders]
where not ((ord_date = '2012-08-17' or customer_id > 3005) and purch_amt < 1000)

-- 10. Orders with Achieved Percentage > 50%

select ord_no, purch_amt, 
case when purch_amt >= ((6000*50)/100) then 'Achieved' else 'Unachieved' end as Category
from [W3Resource].[Inventory].[Orders]
-- or
select ord_no, purch_amt, 
       (100 * purch_amt)/6000 as 'Achieved',
       (100*(6000 - purch_amt)/6000) as 'Unachieved'
from [W3Resource].[Inventory].[Orders]
where purch_amt > 3000

-- 11. Employees with Last Name Dosni or Mardy

select emp_idno, emp_fname, emp_lname, emp_dept from [W3Resource].[dbo].[emp_details]
where emp_lname = 'Dosni' or emp_lname = 'Mardy'

-- 12. Employees in Department 47 or 63

select emp_idno, emp_fname, emp_lname, emp_dept from [W3Resource].[dbo].[emp_details]
where emp_dept = 47 or emp_dept = 63







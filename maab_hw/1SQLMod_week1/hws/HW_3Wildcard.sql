----------Wildcard-------- LS1 homework 

--1. Salespeople from Paris or Rome

--practiced null not null 
select salman_id, salman_name, city, commission from [week1_ls1].[dbo].[salesman]
where city like 'P%' or city like 'R%'

--2. Salespeople in Paris or Rome
select salman_id, salman_name, city, commission from [week1_ls1].[dbo].[salesman]
where city like 'P%' or city like 'R%'

--3. Salespeople Not in Paris or Rome
select salman_id, salman_name, city, commission from [week1_ls1].[dbo].[salesman]
where city not like 'P%' and city not like 'R%'

--4. Customers with Specific IDs
select * from  [week1_ls1].[dbo].[customer]
where customer_id >=3007 and customer_id <=3009

-- 5. Salespeople with Commission 0.12-0.14
select salman_id, salman_name, city, commission from [week1_ls1].[dbo].[salesman]
where commission between 0.12 and 0.14


-- 6. Orders Between 500-4000 Excluding Specific Amounts
select ord_no, purch_amt, ord_date, customer_id, salesman_id from [W3Resource].[Inventory].[orders]
where (purch_amt between 500 and 4000) and not purch_amt in (948.50, 1983.43) 

-- 7. Salespeople with names N-O range

select salesman_id, name, city, commission from [W3Resource].[Inventory].[Salesman]
--where name like 'A%' or name like 'L%' (not right)
where name between 'A' and 'L'

-- 8. Salespeople with names Not A-M Range
select salesman_id, name, city, commission from [W3Resource].[Inventory].[Salesman]
where name not between 'A' and 'L'

-- 9. Customers with Names Starting with B

select customer_id, cust_name, city, grade, salesman_id from [W3Resource].[Inventory].[Customer]
where cust_name like 'B%'


-- 10. Customers with Names Ending with N

select customer_id, cust_name, city, grade, salesman_id from [W3Resource].[Inventory].[Customer]
where cust_name like '%n'

-- 11. Salespeople Name Starts 'N' with Fourth 'L'

select salesman_id, name, city, commission from [W3Resource].[Inventory].[Salesman]
where name like 'N__l%'

-- 12. Rows with Underscore Character
create table testtable(col1 varchar(45))
insert into testtable values('A001/DJ-402\44_/100/2015'),
                            ('A001_\DJ-402\44_/100/2015'),
                            ('A001_DJ-402-2014-2015'),
                            ('A002_DJ-401-2014-2015'),
                            ('A001/DJ_401'),
                            ('A001/DJ_402\44'),
                            ('A001/DJ_402\44\2015'),
                            ('A001/DJ-402%45\2015/200'),
                            ('A001/DJ_402\45\2015%100'),
                            ('A001/DJ_402%45\2015/300'),
                            ('A001/DJ-402\44')
select * from testtable
where col1 like '%\_%' escape '\'  -- escape '\' - specifies that '\' is the escape character

-- 13. Rows Without Underscore Character

select * from testtable
where col1 not like '%\_%' escape '\' 

--14. Rows with Forward Slash Character
select * from testtable
where col1 like '%\/%' escape '\' 

-- 15. Rows without forward slash Character

select * from testtable
where col1 not like '%\/%' escape '\' 

-- 16. Rows with '_/' String

select * from testtable
where col1 like '%\_/%' escape '\'

-- 17. Rows Without '_/' String

select * from testtable
where col1 not like '%\_/%' escape '\'

--18 Rows with Percent Character

select * from testtable
where col1 like '%\%%' escape '\'

-- 19. Rows Without '%' Character

select * from testtable
where col1 not like '%\%%' escape '\'

-- 20. Customers Without Grade

select customer_id, cust_name, city, grade, salesman_id from [W3Resource].[Inventory].[Customer]
where grade is NULL

-- 21. Customers with Grade

select customer_id, cust_name, city, grade, salesman_id from [W3Resource].[Inventory].[Customer]
where grade is not NULL

-- 22. Employee with Last name Starting 'D'

select emp_idno, emp_fname, emp_lname, emp_dept from [W3Resource].[dbo].[emp_details]
where emp_lname like 'D%'









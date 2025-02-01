--------------HW_4  FORMATING OUTPUT

-- 1. 

select salesman_id, name, city, '%', commission from [W3Resource].[Inventory].[Salesman]   -- Returning a new row not perminant maybe

-- 2. 

--select 'For', ord_date, 'there are',  count(ord_date) as count, 'orders' from [W3Resource].[Inventory].[Orders]

--3. Sorted in Ascending order by default

select * from [W3Resource].[Inventory].[Orders]
order by ord_no

-- 4.    Sorted in descending order

select * from [W3Resource].[Inventory].[Orders]
order by ord_no desc

-- 5. 

select * from [W3Resource].[Inventory].[Orders]
order by ord_date desc, purch_amt desc

-- 6. sort by customer id
select cust_name, city, grade from [W3Resource].[Inventory].[Customer]
order by customer_id

-- 7. max amount             DO RESEARCH ON THIS (Group by, min max)
select salesman_id, ord_date, max(purch_amt) as MAX  from [W3Resource].[Inventory].[Orders] 
group by salesman_id, ord_date
order by salesman_id asc, ord_date asc 

-- 8. sort in desc order on 3rd field
select cust_name, city, grade from [W3Resource].[Inventory].[Customer]
order by grade desc -- or order by 3 desc  to choose the 3rd field

-- 9. 
select customer_id, count (distinct ord_no) as unique_orders, max(purch_amt) as 'MAX' from [W3Resource].[Inventory].[Orders] -- 
group by customer_id  -- For each customer 
order by 2 desc -- desc order on a 2nd field







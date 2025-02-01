-------- HW_1 SQL Solution - Retrieve data from tables ----------

-- 1. Display All Salespeople

select * from [W3Resource].[Inventory].[Salesman]

-- 2. Display a Custom String

select 'This is SQL Exercise, Practice and Solution'
print 'This is SQL Exercise, Practice and Solution'

-- 3. Display Three Numbers

select 1, 2, 3 

-- 4. Sum of Two Numbers

select sum(10 + 15)
select 10 + 15

-- 5. Arithmetic Expression Result

select 2 * 3 + 4 * 2 - 10

--  6. Specific Columns of Salespeople

select name, commission from [W3Resource].[Inventory].[Salesman]

-- 7. Custom Column Order in Orders

select ord_date, salesman_id, ord_no, purch_amt  from [W3Resource].[Inventory].[Orders]

-- 8. Unique Salespeople IDs

select distinct(salesman_id) from [W3Resource].[Inventory].[Orders]

-- 9. Salespeople in Paris

select name, city from [W3Resource].[Inventory].[Salesman]
where city = 'Paris'

-- 10. Customers with Grade 200

select customer_id, cust_name, grade, salesman_id from [W3Resource].[Inventory].[Customer] 
where grade  = 200

-- 11. Orders by Salesperson 5001

select ord_no, ord_date, purch_amt from [W3Resource].[Inventory].[Orders]
where salesman_id = 5001

-- 12. Nobel Winner of 1970

select year, subject, winner from [W3Resource].[dbo].[nobel_win]
where year = 1970

-- 13. Literature Winner 1971

select winner from [W3Resource].[dbo].[nobel_win]
where subject = 'Literature' and year = 1971

-- 14. Locate Dennis Gabor

select year, subject from [W3Resource].[dbo].[nobel_win]
where winner = 'Dennis Gabor'

-- 15. Physics Winners Since 1950

select winner from [W3Resource].[dbo].[nobel_win]
where subject = 'Physics' and year >= 1950

-- 16. Chemistry Winners (1965-1975)
select year, subject, winner, country from [W3Resource].[dbo].[nobel_win]
where year between 1965 and 1975 and subject  = 'Chemistry'
-- or
select year, subject, winner, country from [W3Resource].[dbo].[nobel_win]
where year >= 1965 and year<= 1975 and subject  = 'Chemistry'

-- 17. Prime Ministers After 1972

select * from [W3Resource].[dbo].[nobel_win]
where year >= 1972 and winner in ('Menachem Begin' , 'Yitzhak Rabin')

-- 18. Winners with First Name Louis

select year, subject, winner, country, category from [W3Resource].[dbo].[nobel_win]
where winner like 'Louis%' -- Wild card

-- 19. Combine Winners (Physics 1970 & Economics 1971)

select year, subject, winner, country, category  from [W3Resource].[dbo].[nobel_win]
where (subject = 'Physics' and year = 1970) or (subject = 'Economics' and year = 1971)
-- or
select *  from [W3Resource].[dbo].[nobel_win]
where (subject = 'Physics' and year = 1970) union (select *  from [W3Resource].[dbo].[nobel_win] where subject = 'Economics' and year = 1971)

-- 20. 1970 Winners Excluding Physiology & Economics

select * from [W3Resource].[dbo].[nobel_win]
where year = 1970
except
select * from [W3Resource].[dbo].[nobel_win]
where subject in ('Physiology', 'Economics')

-- 21. Physiology Before 1971 & Peace After 1974

select * from [W3Resource].[dbo].[nobel_win]
where subject = 'Physiology' and year < 1971
union all
select * from [W3Resource].[dbo].[nobel_win]
where subject = 'Peace' and  year >= 1974

-- 22. Details of Johannes Georg Bednorz

select year, subject, winner, country, category from [W3Resource].[dbo].[nobel_win]
where winner = 'Johannes Georg Bednorz'

-- 23. Winners Excluding Subjects Starting with P

select year, subject, winner, country, category from [W3Resource].[dbo].[nobel_win]
where subject not like 'P%'
order by year desc , winner asc

-- 24. Ordered 1970 Nobel Prize Winners

select year, subject, winner, country, category from [W3Resource].[dbo].[nobel_win]
where year = 1970 
order by 
       case when subject in ('Economics', 'Chemistry') then 1
            else 0
       end asc, subject

--  25. Products in Price Range Rs.200-600
select pro_id, pro_name, pro_price, pro_com from [W3Resource].[dbo].[item_mast]
where pro_price >= 200 and pro_price <= 600
-- or
select pro_id, pro_name, pro_price, pro_com from [W3Resource].[dbo].[item_mast]
where pro_price between 200 and 600

-- 26. Average Price for Manufacturer Code 16

select avg(pro_price) as avr from [W3Resource].[dbo].[item_mast]
where pro_com = 16 

-- 27. Display Item Name and Price

select pro_name as 'Item Name', pro_price as  'Price in Rs.'  from [W3Resource].[dbo].[item_mast]  

-- 28. Items with Price >= $250

select pro_name, pro_price from [W3Resource].[dbo].[item_mast]
where pro_price >= 250
order by pro_price desc, pro_name

-- 29. Average Price per Company

select avg(pro_price) as avr, pro_com from [W3Resource].[dbo].[item_mast]
group by pro_com
order by pro_com 

-- 30. Cheapest Item

select pro_name, pro_price from [W3Resource].[dbo].[item_mast]
where pro_price = (select min(pro_price) from [W3Resource].[dbo].[item_mast])
-- or
select top 2 pro_name, pro_price from [W3Resource].[dbo].[item_mast]
order by pro_price asc

-- 31. Unique Employee Last Names

select distinct emp_lname from [W3Resource].[dbo].[emp_details]

-- 32. Employees with Last Name Snares

select emp_idno, emp_fname, emp_lname, emp_dept from [W3Resource].[dbo].[emp_details]
where emp_lname = 'Snares'

--  33. Employees in Department 57

select emp_idno, emp_fname, emp_lname, emp_dept from [W3Resource].[dbo].[emp_details]
where emp_dept = 57





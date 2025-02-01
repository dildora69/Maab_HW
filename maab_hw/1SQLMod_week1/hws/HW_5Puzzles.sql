---------------- HW_5 Puzzles -------------
-- 1.
select * from [dbo].[TestMultipleZero]
where not(A = 0 and B = 0 and C = 0 and D = 0)


-- 2. 

CREATE TABLE TESTDuplicateCount ( 
    ID INT,
    EmpName VARCHAR(100),
    EmpDate DATETIME
) 
--Insert Data 
INSERT INTO TESTDuplicateCount(ID,EmpName,EmpDate) 
VALUES
(1,'Pawan','2014-01-05'),
(2,'Pawan','2014-03-05'), 
(3,'Pawan','2014-02-05'), 
(4,'Manisha','2014-07-05'), 
(5,'Sharlee','2014-09-05'), 
(6,'Barry','2014-02-05'), 
(7,'Jyoti','2014-04-05'), 
(8,'Jyoti','2014-05-05')

select EmpName, sum(case when EmpName = 'Pawan' then 1 else 0 end),
sum(case when EmpName = 'Manisha' then 1 else 0 end),
sum(case when EmpName = 'Shriee' then 1 else 0 end),
sum(case when EmpName = 'barry' then 1 else 0 end),
sum(case when EmpName = 'Jyoti' then 1 else 0 end)  as A
from TESTDuplicateCount 
group by EmpName 


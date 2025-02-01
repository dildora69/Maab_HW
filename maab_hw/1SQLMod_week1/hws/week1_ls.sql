-- 1st Module   1st Week

--server is like a powerful computer that stores information and handles requests from other devices   -- is a unit, instanse
-- (like your phone, tablet, or computer) over a network.

--Server 
----Database
-----Schema
------Table
--------Rows, Col, Metadata - is data (info) about a data

--DDL - Data Definition Language -- the commands you use to set up or change the structrure
----of the databse
---Create, Alter, Drop
-- DDL - cahnges the structure of the database

--DML - Data Manipulation Language -- it works with actual database
 -- it's like adding, moving things, cleaning from a house
-- insert, update, delete, truncate 
--DML - changes or works with the data inside teh structure




create database week1_ls1
use week1_ls1

create table student (stud_id int, stud_name varchar(30), age int, bonus decimal(10,2))
create schema w1_ls1

select * from student

alter table student
add stud_faculty varchar(30)

--1-Way to insert
insert into student values (1001, 'John', 23, 1000, 'Chemistry'),
                           (1002, 'Nick', 18, 1200, 'Biology'),
                           (1003, 'Hecore', 24, 1300, 'math')
--2-Way to insert
insert into student (stud_id, stud_name, bonus) values (1004, 'Lady', 1500),
                                                       (1005, 'Deiby', 2000)
--3-Way to insert

insert into student
select 1006, 'Nasim', 35, 2000, 'Phisics'


select * from student
update student
set age = 20
where age is null

--delete, truncate -- clears the rows, drop -- cleares the columns
--identy -- increments (counts) the table rows   - identity(strt point,incrementing by)


-- DQL - Data Query Language   - retrievs or query data from the DB
----show, display, retrive -- select

--DCL - Data Control Language - is used to access and premissions in a DB 
-- grant, revoke

-- TCL -- Transaction Control Language - manage transactions in a DB
-- transaction is a group of SQL operations (like INsert, update, delete) that are executed together


select * from student
begin tran
update student
set age = 25
where stud_id = 3
rollback
select * from student

--Renaming column in the table   and Tabels itself

exec sp_rename 'dbo.student.bonus', 'salary', 'column'

exec sp_rename 'student', 'staff'
select * from sys.databases





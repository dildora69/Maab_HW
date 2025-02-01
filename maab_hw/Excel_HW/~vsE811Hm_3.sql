--HW  / F_5    -- 4tables 5 rows, 5cols. 4 tables, 4 insersion types
--task 2. learn about sql consatraints like check, default, unique, not null try to use them during table creation
                                     
                                     --default , 1st & 2nd insersion type
create table stylist (stylist_name varchar(30), service varchar(20), payment_type varchar(10),price decimal(3,2), date_colum date default getdate())

select * from stylist

insert into stylist values('Jane', 'Shaving', 'Cash', 7.00, '5/1/2023'),
                          ('Martha', 'Shaving', 'Credit', 8.00, '5/1/2023')
--2nd type of insertion
insert into stylist (stylist_name, service, payment_type, price, date_colum) values ('Rachel','All', 'cash', 6.00, default),
                                                                                    ('Lucy', 'Hairstylist', 'credit', 9.00, default),
                                                                                    ('Ashley', 'Kids', 'cash', 5.00, default)
                                         --not null/ null
create table nullNotnull (empl_id int primary key, empl_name varchar(30) not null, age int not null, slaray decimal (10,2))

select * from nullNotnull

insert into nullNotnull (empl_id, empl_name, age, slaray) values (1001, 'Tom', 23, 2000),
                                                                (1002, 'Jade', 27, 1500),
                                                                (1004, 'Hector', 32, 3000)
insert into nullNotnull (empl_id, empl_name, age) values (1003, 'Melvin', 28)
insert into nullNotnull (empl_id, empl_name,age) values (1005, 'Nasim', 29)
                                                                
                                                      --check 3rd type
create table stud_age_check (stud_id int primary key, stud_name varchar(20), age int check (age >= 16 and age <=40))

select * from stud_age_check

insert into stud_age_check
select 2001, 'Hilola', 21
insert into stud_age_check
select 2002,'Munisa', 18
insert into stud_age_check
select 2003, 'Zilola', 20
insert into stud_age_check
select 2004, 'Hilda', 40
insert into stud_age_check
select 2005, 'Diana', 24

                                                --unique
create table un_email (emp_id int primary key, emp_name varchar(30), email varchar(35) unique, age int)

insert into un_email values (4001, 'Hector', 'hector@gmail.com',21),
                            (4002, 'Jade', 'jade@gmail.com', 23),
                            (4003, 'Lady', 'lady@gmail.com', 28),
                            (4004, 'Eric', 'eric@gmail.com', 30),
                            (4005, 'John', 'john@gmail.com', 35)
select * from un_email
                          
                                                                        





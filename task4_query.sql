create table DMart_Customer(
	customer_id serial primary key,
	first_name varchar(50),
	last_name varchar(50),
	Age int,
	Gender varchar(50)
)

select * from DMart_customer

insert into DMart_customer values (101,'Andrew','Goodman',25,'Male'),(102,'Alvin','Lane',30,'Male'),(103,'Jenna','Harding',22,'Female'),(104,'Kara','Woods',27,'Female'),(105,'Marrisa','Gamble',43,'Female')

select * from DMart_customer

copy DMart_customer from 'F:\Data Analyst\dmart_output.csv' DELIMITER ',' csv header

select * from DMart_customer

--1) Distinct query

select distinct gender from DMart_customer
select distinct age,gender from DMart_customer

--2) where query 

select * from DMart_customer where age = 22
select first_name,age from DMart_customer where customer_id = 789
select * from DMart_customer where age > 30

--3) AND query

select * from DMart_customer where customer_id = 105 AND age = 43
select * from DMart_customer where customer_id = 110 AND age = 46

--4) OR query

select * from DMart_customer where customer_id = 120 OR age = 43
select first_name,last_name,age from DMart_customer where customer_id = 133 OR age > 33

--5) NOT query 

select * from DMart_customer where not age = 30

--6) Update query

update DMart_customer set age = 44 where customer_id = 106
update DMart_customer set age = 30 where customer_id = 104

--7) Delete query

delete from DMart_customer where customer_id = 102
select * from DMart_customer

--8) Alter query

alter table DMart_customer add column location varchar(50)
alter table DMart_customer drop column location

--9) Rename query

alter table DMart_customer rename column age to customer_age
select * from DMart_customer

--10) IN query

select * from DMart_customer where customer_id in (105,110,118)
select * from DMart_customer

--11) Between query
 select * from DMart_customer where customer_age between 30 AND 40



create table employee(
	id varchar primary key,
	name varchar(50),
	age int,
	location varchar(50)
)

select * from employee

insert into employee values ('a1','name1',25,'nagpur'),('a2','name2',33,'pune'),('a3','name3',22,'mumbai'),('a4','name4',34,'delhi'),('b1','name5',29,'Banglore'),('b2','name6',37,'nagpur'),('b3','name7',41,'delhi'),('c1','name8',28,'pune'),('c2','name9',43,'goa'),('c3','name10',26,'kerela')   

--check constarints

alter table employee add constraint age check(age<=78)
alter table employee ADD CONSTRAINT check_name CHECK (name NOT IN('a1','b1','check'))
select * from employee


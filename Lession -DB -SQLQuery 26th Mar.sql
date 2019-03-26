/*
DDL  : Data defination language (object and structure management)
	-create
	-alter
	-drop
	-truncate
DML	 : Data manipulaiton language (data managemnet)
	-insert
	-update
	-delete
DCL   : Decision/data control langauge  (Security control)
	-creater user
	-grant access
	-revoke access	

*/
--create
--create new database 
create database learning;

--use database/change database
use learning;

--create table 
create table employee(
eid int, 
name varchar(30),
email varchar(40),
gender varchar(40), 
country varchar(100), 
basic_sal int)

--view table
select * from employee --* : show all columns 

--insert data 
--insert into all columns 
insert into employee 
values(1,'raman','raman@gmal.com','male','india',44555,5433333,444)


--insert in few columns
insert into employee (eid,name,email,gender,country)
values(2,'nitisha','nsnitisha@gmail.com','female','india')


--view all data 
select * from employee

--view selected columns 
select eid,name, email from employee 

--view selected rows 
select * from employee where eid =1

select * from employee where eid >1



---alter : add new column in table
alter table employee
add phone  bigint

--add multiple column
alter table employee
add da  int, ta int

select * from employee

--alter  : remove the column
--drop
alter table employee 
drop column ta 


--drop table  : data with structure 
drop table employee 

--truncate  : remove all data , but structure will remain same
--truncate
truncate table employee



--update : modify  the data 
select * from employee 

update employee 
set basic_sal = 67888
where eid  =2

update employee 
set basic_sal = 67888,
da = 8899
where eid  =2

--delete   : remove data (either all rows or selected row)
--remove selected row
delete from employee where eid  =1
select * from employee 

--remove all rows
delete from employee



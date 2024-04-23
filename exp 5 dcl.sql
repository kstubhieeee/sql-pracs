--admin should execute this
create database kstubh;

use kstubh;

create login kaustubh with password='1234';
create user kaustubh for login kaustubh;

create table employee(
id integer primary key,
name varchar(20),
salary float);

insert into employee(id,name,salary)
values
(1,'Kaustubh',10000000),
(2,'Karan',9000000),
(3,'Faiz',8900000);

select * from employee;

grant select, insert
on dbo.employee 
to kaustubh;

--second user should execute this in new window
use kstubh;
insert into employee(id,name,salary)
values
(4,'Rohit Sharma',4500000);

select * from employee;

--admin should execute this
use kstubh;

revoke insert
on dbo.employee 
from kaustubh;

--second user should execute this this in new window
use kstubh;

select * from employee;



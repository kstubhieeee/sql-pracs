CREATE TABLE employee(
id integer primary key,
name varchar(20),
salary float
);

select * from employee;

insert into employee(id, name, salary)
values
(1,'Kaustubh',1000000),
(2,'Karan',900000),
(3,'Faiz',890000);

alter table employee
add department varchar(50);

alter table employee
drop column department;

--this is a comment

truncate table employee;

drop table employee;
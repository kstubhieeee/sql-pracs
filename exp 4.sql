CREATE TABLE employee(
id integer primary key,
name varchar(20),
salary float
);

select * from employee; --used for displaying

insert into employee(id, name, salary)
values
(1,'Kaustubh',1000000),
(2,'Karan',900000),
(3,'Faiz',890000);

update employee
set salary=2598033
where id=2;

delete from employee
where id =1;


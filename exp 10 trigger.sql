CREATE TABLE student(
id integer primary key,
name varchar(20),
fees float,
dept varchar(20)
);

insert into student(id, name, fees,dept)
values
(1,'Kaustubh',1000,'comps'),
(2,'Karan',900,'it'),
(3,'Faiz',890,'extc');

select * from student;

create trigger capitalise
on student
for insert, update
as
update student
set dept=upper(dept);

insert into student(id, name, fees,dept)
values
(4,'Ansh',5000,'comps');
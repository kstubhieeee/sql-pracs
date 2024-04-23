CREATE TABLE student(
id integer primary key,
name varchar(20),
fees float
);

insert into student(id, name, fees)
values
(1,'Kaustubh',1000),
(2,'Karan',900),
(3,'Faiz',890),
(4,'Sujal',4000),
(5,'Shrey',930),
(6,'Anurag',1060),
(7,'Aaditya',800);

select * from student;

CREATE TABLE course(
id integer primary key,
c_name varchar(20),
dept varchar(20)
);

insert into course(id, c_name, dept)
values
(1,'Java','comps'),
(2,'Python','extc'),
(3,'C++','it'),
(4,'Javascript','comps'),
(5,'Ruby','extc'),
(6,'PHP','it'),
(7,'C','comps');

select * from course;

CREATE VIEW details
as
select name,c_name,dept from student
join course 
on student.id=course.id;

select * from details;
CREATE TABLE student(
id integer primary key,
name varchar(20),
fees float
);

insert into student(id, name, fees)
values
(1,'Kaustubh',1000.6),
(2,'Karan',900.1),
(3,'Faiz',890.7);

select * from student;

CREATE TABLE course(
id integer primary key,
c_name varchar(20)
);

insert into course(id, c_name)
values
(1,'Java'),
(2,'Python'),
(4,'C++');

select * from course;

select * from student
join course 
on student.id=course.id;

select * from student
left join course 
on student.id=course.id;

select * from student
right join course 
on student.id=course.id;

select * from student
full join course 
on student.id=course.id;
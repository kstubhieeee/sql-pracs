CREATE TABLE student(
id integer primary key,
name varchar(20),
fees float
);

insert into student(id, name, fees)
values
(1,'Kaustubh',1000),
(2,'Karan',900.),
(3,'Faiz',890);

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
(3,'C++','it');

select * from course;

select * from student where name in ('Karan','Faiz');

select * from course where c_name!='Python';

select * from course where 
id = any(select id from student where fees>=900);


select * from course where 
id = all(select id from student where fees>=1000);


select id,c_name,dept,(select name from student where course.id=student.id) as 'name' from course ;
CREATE TABLE student(
id integer primary key,
name varchar(20),
fees float
);


insert into student(id, name, fees)
values
(1,'KAUSTUBH',1000.6),
(2,'KARAN',900.1),
(3,'FAIZ',890.7);

select * from student; 

select lower(name)  as 'lower_name' from student;

select upper(name)  as 'upper_name' from student;

select len(name)  as 'name length' from student;

select substring(name,3,2) as 'substring' from student;

select round(fees,0) as 'Fees paid' from student;

select sum(fees) as 'total fees' from student;

select avg(fees) as 'avg fees' from student;

select min(fees) as 'min fees' from student;

select max(fees) as 'max fees' from student;

select count(*) as 'total students' from student;
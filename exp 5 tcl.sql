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

begin transaction
insert into student(id, name, fees)
values
(4,'Sneha',990);

rollback;

begin transaction
insert into student(id, name, fees)
values
(4,'Sneha',990);
save transaction A;

insert into student(id, name, fees)
values
(5,'Dyuti',950);
save transaction B;

insert into student(id, name, fees)
values
(6,'Arya',980);
save transaction C;

rollback transaction B;

commit;

select * from student;
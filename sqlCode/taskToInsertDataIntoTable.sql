Create database people;
use people;
Create table people(
first_name varchar(20),
last_name varchar(20),
age int
);
insert into people(first_name,last_name,age)
values('Tina','Belcher',13);
insert into people(first_name,last_name,age)
values('Bob','Belcher',42);
desc people;
select * from people;

insert into people(first_name,last_name,age)
values('linda','Belcher',45),
('Philip','Frond',38),
('Calvin','Fishoeder',78);
select * from people;




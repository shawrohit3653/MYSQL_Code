create database cats;
use cats;
create table cats(
name varchar(100),
age int
);
insert into cats(name,age)
values('jetson',5);
select * from cats;
select name from cats;

insert into cats(name,age)
values('jetson',5),
('vipin',5);
select * from cats;



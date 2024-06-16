show databases
use helloworld;
create table Employees(
id int auto_increment not null,
first_name varchar(100) not null,
last_name varchar(100) not null,
middle_name varchar(100),
age int not null,
current_status varchar(100) not null default 'employed',
primary key(id)
);
desc Employees;
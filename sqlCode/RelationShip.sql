use helloworld;
create table custmors(
	id int not null auto_increment,
    first_name varchar(100),
    last_name varchar(100),
    email varchar(100),
    primary key(id)
);
insert into custmors(first_name,last_name,email)
values('boy','george','george@gmail.com'),
('george','michel','gm@gmail.com'),
('David','bowle','david@gmail.com'),
('blue','steele','blue@gmail.com');

create table orders(
	id int not null auto_increment primary key,
    order_date date,
    amount decimal(8,2),
    customer_id int,
    foreign key(customer_id) references custmors(id)
);
desc orders;
insert into orders(order_date,amount,customer_id)
values('2016-02-10',99.99,1),
('2017-11-11',35.50,1),
('2014-12-12',800.67,2),
('2015-01-03',12.50,2);

#Inner join

select * from custmors
inner join orders
on custmors.id= orders.customer_id;

#left join
select * from custmors
left join orders
on custmors.id= orders.customer_id;

#right join
select * from custmors
right join orders
on custmors.id= orders.customer_id;


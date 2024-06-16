show databases;
use people;
# Create
Create table cats(
cat_id int not null auto_increment,
name varchar(100),
breed varchar(100),
age int,
primary key(cat_id)
);
insert into cats(name,breed,age)
values('Rigno','tabby',4),
('Cindy','Maine Coon',10),
('Dumbeldore','Maine Coon',11),
('Egg','Persian',4),
('Mistry','tabby',13),
('George','Ragdoll',9),
('Jackson','Sphynx',13);


#Read

select * from cats;
select name from cats;
select name,age from cats;
select  cat_id,name, age from cats;

#Where

select name, age from cats where age=4;
select * from cats where name="egg";

#Task

select cat_id from cats;
select name, breed from cats;
select name, age from cats where breed="tabby";
select cat_id,age from cats where cat_id=age;
select * from cats;

#Alias

Select cat_id as id, name from cats;

#UPDATE

UPDATE cats SET breed='shorthair' WHERE breed='tabby';

#task
update cats set name ='jake' where name ='jackson';
update cats set breed ='british shorthair' where name ='Ringo';
update cats set age ='12' where breed='Maine coon';
select * from cats;

#Delete

delete from cats where name ="egg";
select * from cats;

#Challenges
delete from cats where age =4;
select * from cats;
delete from cats where age =cat_id;
select * from cats;

delete from cats;
select * from cats;








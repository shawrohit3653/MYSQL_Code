select title from books where released_year=2017;

#Not equal
select title from books where released_year!=2017;

#Not Like
select title from books where title like 'w%';
select title from books where title Not like 'w%';
select title, released_year from books where released_year like '20__';
select title, released_year from books where released_year Not like '20__';


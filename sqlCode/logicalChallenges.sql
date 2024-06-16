select * from books where released_year <2000;


#select all books written by eggers or chabon
select * from books where author_lname='Eggers' or author_lname='Chabon' ;
select * from books where author_lname in('Eggers','Chabon' );

#select all books written by lahiri published after 2000
select * from books where author_lname='lahiri' and released_year>2000;

#select all books with page counts between 100 and 200;
select title,pages from books where pages between 100 and 200;

#select all books where author_lname starts with a 'C' or an 'S';alter
select author_lname from books where author_lname like 'C%' or author_lname like 'S%';

#case
select title, author_lname,
	case
		when title like '%stroies' then 'short Stroies'
        when title- 'Just kids' or title- 'A heartbreaking work of staggering genius' then 'Memoir'
        else 'Novel'
	end as 'Type'
from books;
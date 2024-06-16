use helloworld;
select * from books;
#print the number of books in the database
select count(*) from books;

#print out how many books were released in each(groupby) year
select released_year,count(*) from books group by released_year;

#print out the total number of books in stock
select sum(stock_quantity) from books;

#find the average released_year for each year
select avg(released_year) from books group by author_fname,author_lname;
select author_fname,author_lname ,avg(released_year) from books group by author_fname,author_lname; 

#find the full name of the author who wrote the longest book
select concat(author_fname,' ',author_lname) as author from books where pages=(select max(pages) from books); #subquary form
select concat(author_fname,' ',author_lname) as author from books order by pages desc  limit 1; #orderby or desc
select pages,concat(author_fname,' ',author_lname) as author from books where pages=(select max(pages) from books);
 
#Make the output
select released_year as year,
count(*) as '#books',
avg(pages) as 'avg pages'
from books group by released_year;


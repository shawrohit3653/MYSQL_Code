use helloworld;
create table bookss(
 book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT,
    PRIMARY KEY(book_id)
);

INSERT INTO bookss
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES 
	('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman', 2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
    ('10% Happier', 'Dan', 'Harris', 2014, 29, 256),
    ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
    ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

# distinct    
select distinct author_lname from bookss;

select distinct  concat(author_fname,' ',author_lname) as 'full name' from bookss;

#orderby
Select author_lname from books order by author_lname;

#Limit

Select title from books limit 3;

Select title, released_year from books order by released_year desc limit 5;

Select title, released_year from books order by released_year desc limit 0,5;


#Like
#wildcard->%
Select title, author_fname from books where author_fname like '%da%';

#wildcard->_
Select title, author_fname from books where author_fname like '%da_';







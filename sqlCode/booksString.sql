Drop database if exists book_shop;
create database book_shop;
use book_shop;
CREATE TABLE books
(
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT,
    PRIMARY KEY(book_id)
);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
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
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176);
desc books;
select * from books;

#Concat
Select concat(author_fname,' ',author_lname) as 'full name' from books;

#concat_ws
Select concat_ws('-',author_fname,' ',author_lname) as data from books;

#Substring
SELECT SUBSTR('hello world', 1, 4);
SELECT SUBSTR('hello world', 3, 8);
SELECT SUBSTR('hello world', -3);
SELECT SUBSTR('hello world', 7);
SELECT SUBSTR('hello world', 7, 1919);

#Replace

Select replace ('Hello world','Hell','9999') as string;
Select replace ('Hello world','l','7') as string;
Select replace ('Hello world','l',7);
Select replace ('Cheese bread codde milk',' ','and') ;

Select replace (title,'e',0) from books;

Select substring(replace(title,'e',3),1,10) as 'String' from books;
Select concat(substring(replace(title,'e','3'),1,10),'...') as 'String' from books;

#Reverse

Select Reverse ('hello world') as reverse;
Select Reverse (title) as title from books;
Select concat('hello',reverse('hello')) as palindrome;

#CHaracter Length

Select char_length('hello world');
select author_lname,char_length(author_lname) as 'length' from books;
select concat(author_lname,' is ',char_length(author_lname),'charachter long') as 'String' from books;

#upper and lower
select upper('hello');
select lower('hellO');
select concat('MY FAVO',upper(title)) as 'favori' from books;
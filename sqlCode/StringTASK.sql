use helloworld;
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

select upper(reverse("Why does my cat look at me with such hatred?")) as 'reverse String';

Select  replace(title,' ','->') as title from books;

select author_lname as 'forward',reverse(author_lname) as 'backwards' from books;

select upper(concat(author_fname,' ', author_lname) )as 'full name in caps' from books;

select concat(title, ' was released in ' ,released_year) as 'blurb' from books;

select title, char_length(title) as 'character count' from books;

Select concat(substr(title,1,10),'...') as 'short title', 
concat(author_lname,',',author_fname) as author,
concat(stock_quantity,' in stock ') as quantity from books;


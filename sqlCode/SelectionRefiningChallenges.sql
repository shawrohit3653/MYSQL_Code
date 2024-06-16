create database selectionRefining;
use selectionRefining;
CREATE TABLE booksChallenges
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

INSERT INTO booksChallenges (title, author_fname, author_lname, released_year, stock_quantity, pages)
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
select * from booksChallenges;
desc booksChallenges;
select title from booksChallenges where title like '%stories%';

select title,pages from booksChallenges order by pages desc limit 1;

select concat(title,'_', released_year) from bookschallenges as summary order by released_year desc limit 3;

select title,author_lname from booksChallenges where author_lname like '% %';

select title,released_year,stock_quantity from booksChallenges order by stock_quantity  limit 3;

select title,author_lname from booksChallenges order by author_lname,title;

select concat('MY FAVO AUTHOR IS ', Upper(author_fname),' ', Upper(author_lname),':' ) as yell from booksChallenges order by author_lname;







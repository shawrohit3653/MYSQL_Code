use helloworld;
#primary child;
create table students(
id int not null auto_increment primary key,
first_name varchar(100)
);

#child table
create table papers(
title varchar(100),
grade int,
student_id int,
foreign key(student_id) references students(id)
);

INSERT INTO students (first_name) VALUES 
('Caleb'), 
('Samantha'), 
('Raj'), 
('Carlos'), 
('Lisa');

INSERT INTO papers (student_id, title, grade) VALUES 
(1, 'My First Book Report', 60), 
(1, 'My Second Book Report', 75), 
(2, 'Russian Lit Through The Ages', 90), 
(2, 'Poetry and the Art of The Essay', 80), 
(3, 'Calculus and Theoretical Mathematics', 95), 
(4, 'Quantum Physics', 85);

#inner join
select first_name,title,grade from students join papers
on students.id=papers.student_id order by grade desc;

#left join because in output we are getting null of right side
select first_name,title,grade from students left join papers
on students.id=papers.student_id;

select first_name,ifnull(title,'Missing') as title,ifnull(grade,0) as grade from students left join papers
on students.id=papers.student_id;

select first_name,
ifnull(avg(grade),0) as average
from students left join papers
on students.id=papers.student_id
group by first_name order by average desc;

select first_name,
ifnull(avg(grade),0) as average,
case 
	when avg(grade) is null then 'falling'
    when avg(grade) >=75 then 'passing'
    else 'falling'
end as'passing'
from students left join papers
on students.id=papers.student_id
group by first_name order by average desc;
 



desc papers;


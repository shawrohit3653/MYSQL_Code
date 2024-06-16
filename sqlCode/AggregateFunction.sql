#count
select count(*) from booksChallenges;
select title from booksChallenges where title like '%the%';
select count(*) from booksChallenges where title like '%the%';

#min/max
select min(released_year) from booksChallenges;
select max(released_year) from booksChallenges;
select min(pages) from booksChallenges;

#Subquary
Select * from booksChallenges where pages=(select min(pages) from booksChallenges);

#Sum
Select sum(pages) from booksChallenges;

#sumWithGroupBy
Select concat(author_fname,' ', author_lname) as author, sum(pages) from booksChallenges group by author;



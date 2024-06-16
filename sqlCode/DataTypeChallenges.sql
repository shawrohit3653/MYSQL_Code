use helloworld;
select CURTIME();
select curdate();
select dayofweek(curdate());
select dayname(now());
select date_format(now(),'%w');

select date_format(now(),'%M %D at %h:%i');

create table tweets(
	tweetContent varchar(100),
    username varchar(100),
    created_at timestamp default now()
);
desc tweets;
insert into tweets(tweetContent,username)
values("This is my first program",'Hello');
select * from tweets;



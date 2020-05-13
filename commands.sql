drop table if exists users;
CREATE table users (
  id integer primary key,
  name text,
  score integer
);
insert into users (name, score) values ('taguchi', 43);
insert into users (name, score) values ('fkoji',   80);
insert into users (name, score) values ('tashiro', 65);
insert into users (name, score) values ('hayashi', 54);
insert into users (name, score) values ('sato',    74);
insert into users (name, score) values ('ohashi',  null);

-- select * from users where score > 60;

-- > < >= <= =(==) <>(!=)
-- and or not

-- select * from users where score >= 50 and score <= 80;

-- between in

-- select * from users where score between 50 and 80;
-- select * from users where name in ('taguchi', 'fkoji');

-- select * from users where score = null;
select * from users where score is not null;
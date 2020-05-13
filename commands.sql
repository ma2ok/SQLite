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

-- order by
-- select * from users where score is not null order by score;
-- select * from users where score is not null order by score desc;

-- limit
-- select * from users where score is not null order by score desc limit 3;
-- select * from users where score is not null order by score desc limit 3 offset 2;
select * from users where score is not null order by score desc limit 2, 3;
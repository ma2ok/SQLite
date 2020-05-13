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

-- view
-- create view hiscore as select * from users order by score desc limit 5;
--
-- .tables
-- .schema

-- select * from hiscore;
drop view if exists hiscore;
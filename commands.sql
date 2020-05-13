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

-- select * from users;

-- .headers on
-- -- select id, name from users;
-- select id, name as user_name from users;

-- .mode line
-- select * from users;

.mode csv
select * from users;

.mode html
select * from users;

.mode column
select * from users;
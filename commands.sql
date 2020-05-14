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

.headers on
.mode column

-- select count(id), max(score), min(score), avg(score) from users;
-- select name, length(name), upper(name), substr(name, 2, 3) from users;

-- select last_insert_rowid();

-- select random();

select * from users order by random() limit 1;
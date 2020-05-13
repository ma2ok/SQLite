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
insert into users (name, score) values ('ohashi*',  null);

-- glob
-- 大文字小文字を区別する
-- ?
-- *
-- [abc]
-- [a-z]
-- select * from users where name glob '*i*';
-- select * from users where name glob '*I*';
-- select * from users where name glob '[ts]*';
-- select * from users where name glob '[a-m]*';
select * from users where name glob '*[*]';
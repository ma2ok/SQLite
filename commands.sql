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
insert into users (name, score) values ('ohashi%',  null);

-- like
-- _
-- %
-- select * from users where name = 'Taguchi';
-- select * from users where name like 's___';
-- select * from users where name like 'S___';
-- select * from users where name like '%i%';
select * from users where name like '%@%' escape '@';
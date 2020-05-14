drop table if exists users;
CREATE table users (
  id integer primary key,
  name text,
  score integer,
  team text,
  created datetime default (datetime('now', '+09:00:00'))
);
insert into users (name, score, team) values ('taguchi', 43, 'team-A');
insert into users (name, score, team) values ('fkoji',   80, 'team-B');
insert into users (name, score, team) values ('tashiro', 65, 'team-B');
insert into users (name, score, team) values ('hayashi', 54, 'team-A');
insert into users (name, score, team) values ('sato',    74, 'team-C');

.headers on
.mode column

-- date time
-- date()
-- time()
-- strftime()
-- select datetime('now', '+09:00:00');
-- select date('2015-07-17', '+3 months', 'start of month', '-1 day');

select * from users;
drop table if exists users;
CREATE table users (
  id integer primary key,
  name text,
  score integer,
  team text
);
insert into users (name, score, team) values ('taguchi', 43, 'team-A');
insert into users (name, score, team) values ('fkoji',   80, 'team-B');
insert into users (name, score, team) values ('tashiro', 65, 'team-B');
insert into users (name, score, team) values ('hayashi', 54, 'team-A');
insert into users (name, score, team) values ('sato',    74, 'team-C');

.headers on
.mode column

-- select team, avg(score) from users group by team;
-- select team, avg(score) from users group by team having avg(score) > 50;
-- select team, avg(score) from users where score > 50 group by team;

-- distinct
select distinct team from users;
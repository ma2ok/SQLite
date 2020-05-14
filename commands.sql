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

-- trigger

create table messages (message);

create trigger new_winner update of score on users when new.score > 100
begin
  insert into messages (message) values (
    'name: ' || new.name ||
    ' ' || old.score ||
    ' -> ' || new.score
  );
end;

update users set score = score + 30;
select * from messages;

-- .schema
-- drop trigger new_winner;
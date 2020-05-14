drop table if exists users;
create table users (
  id integer primary key,
  name,
  score
);
insert into users (name, score) values ('a', 10);
insert into users (name, score) values ('b', 20);
insert into users (name, score) values ('c', 30);

create table temp (name, score);

.mode csv
-- .import users.csv users
.import users.csv temp

insert into users (name, score) select name, score from temp;
select * from users;

drop table temp;

.mode csv
.output users_out.csv
select * from users;
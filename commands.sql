/*
- unique
- not null
- default
- check
*/

drop table if exists users;
CREATE table users (
  id integer primary key,
  name text not null,
  score integer default 10 check (score >= 0),
  email text unique
);

-- insert into users (email) values ('taguchi@gmail.com');
-- insert into users (email) values ('taguchi@gmail.com');

-- insert into users (email) values ('taguchi@gmail.com');

-- insert into users (name) values ('taguchi');

insert into users (name, score) values ('taguchi', -30);

select * from users;
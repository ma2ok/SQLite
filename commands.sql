drop table if exists posts;
CREATE table posts (
  id integer primary key,
  title text,
  body text
);
insert into posts (id, title, body) values (1, 't1', 'b1');
insert into posts (id, title, body) values (2, 't2', 'b2');

drop table if exists comments;
CREATE table comments (
  id integer primary key,
  post_id integer,
  comment text
);
insert into comments (id, post_id, comment) values (1, 1, 'c1');
insert into comments (id, post_id, comment) values (2, 1, 'c2');

.headers on
.mode column

-- posts, comments
select * from posts;
select * from comments;
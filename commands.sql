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
-- select * from posts;
-- select * from comments;

-- 内部結合
-- select * from posts inner join comments on posts.id = comments.post_id;
-- select * from posts join comments on posts.id = comments.post_id;
-- select posts.id, posts.title, comments.comment from posts join comments on posts.id = comments.post_id;
-- select posts.id, title, comment from posts join comments on posts.id = comments.post_id;

-- 外部結合
-- left outer join *
-- right outer join
-- full outer join
-- select posts.id, title, comment from posts left outer join comments on posts.id = comments.post_id;
-- select posts.id, title, comment from posts left join comments on posts.id = comments.post_id;

-- 交差結合
select posts.id, title, comment from posts cross join comments;
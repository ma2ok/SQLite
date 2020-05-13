drop table if exists posts;
create table posts (
  id integer primary key,
  title text,
  body text
);

-- insert records
insert into posts (title, body) values ('title1', 'body1');
insert into posts (id, title, body) values (null, 'title2', 'body2');
insert into posts (title, body) values ('title3', 'body3');
insert into posts (title, body) values ('title4', 'it''s body4');
insert into posts (title, body) values ('title5', 'it''s
bod
y5');

-- show all records
select * from posts;
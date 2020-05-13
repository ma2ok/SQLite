-- memo
/* memo */

.help

-- table

-- delete table
drop table if exists posts;

CREATE table posts (
  id integer primary key,
  title text,
  body text
);

-- rename table
alter table posts rename to articles;

-- list tables
.tables

-- add column
alter table articles add column email text;

-- table structure
.schema
-- memo
/* memo */

.help

-- table

/*
integer int tinyint
real double
text varchar(255)
blob
null
*/

CREATE table if not exists posts (
  id integer primary key,
  title text,
  body text
);

-- list tables
.tables

-- table structure
-- .schema posts
.schema
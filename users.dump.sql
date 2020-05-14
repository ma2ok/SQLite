PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE users (
  id integer primary key,
  name
);
INSERT INTO users VALUES(1,'a');
INSERT INTO users VALUES(2,'b');
INSERT INTO users VALUES(3,'c');
COMMIT;

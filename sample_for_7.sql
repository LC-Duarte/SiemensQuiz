CREATE TABLE dogs (
    ID INTEGER,
  	name varchar(50)
  );
 CREATE TABLE cats (
    ID INTEGER,
  	name varchar(50)
  );
INSERT INTO cats (ID,name) VALUES (
  '1',
  'Nicky'
);

INSERT INTO dogs (ID,name) VALUES (
  '2',
  'Nicky'
);
INSERT INTO cats (ID,name) VALUES (
  '2',
  'bento'
)
INSERT INTO dogs (ID,name) VALUES (
  '1',
  'jack'
)

WITH
pets AS (
SELECT name FROM dogs 
UNION
SELECT name from cats)
SELECT DISTINCT name FROM pets
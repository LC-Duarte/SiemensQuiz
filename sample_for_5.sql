CREATE TABLE students (
    ID INTEGER,
    NAME varchar(255),
    Value IntEGER
);
CREATE TABLE NOTES (
    GRADE INTEGER,
    MIN_VALUE INTEGER,
    MAX_VALUE INTEGER
);
INSERT INTO NOTES (GRADE,MIN_VALUE,MAX_VALUE) VALUES (
  '1',
  '0',
  '9'
); 
INSERT INTO NOTES (GRADE,MIN_VALUE,MAX_VALUE) VALUES (
  '2',
  '10',
  '19'
); 
INSERT INTO NOTES (GRADE,MIN_VALUE,MAX_VALUE) VALUES (
  '3',
  '20',
  '29'
); 
INSERT INTO NOTES (GRADE,MIN_VALUE,MAX_VALUE) VALUES (
  '4',
  '30',
  '39'
); 
INSERT INTO NOTES (GRADE,MIN_VALUE,MAX_VALUE) VALUES (
  '5',
  '40',
  '49'
); 
INSERT INTO NOTES (GRADE,MIN_VALUE,MAX_VALUE) VALUES (
  '6',
  '50',
  '59'
); 
INSERT INTO NOTES (GRADE,MIN_VALUE,MAX_VALUE) VALUES (
  '7',
  '60',
  '69'
); 
INSERT INTO NOTES (GRADE,MIN_VALUE,MAX_VALUE) VALUES (
  '8',
  '70',
  '79'
); 
INSERT INTO NOTES (GRADE,MIN_VALUE,MAX_VALUE) VALUES (
  '9',
  '80',
  '89'
); 
INSERT INTO NOTES (GRADE,MIN_VALUE,MAX_VALUE) VALUES (
  '10',
  '90',
  '100'
); 
INSERT INTO students (ID,NAME,Value) VALUES (
  '1',
  'Julia',
  '81'
); 
INSERT INTO students (ID,NAME,Value) VALUES (
  '2',
  'Carol',
  '68'
); 
INSERT INTO students (ID,NAME,Value) VALUES (
  '3',
  'Maria',
  '99'
); 
INSERT INTO students (ID,NAME,Value) VALUES (
  '4',
  'Andreia',
  '78'
); 
INSERT INTO students (ID,NAME,Value) VALUES (
  '5',
  'Jaqueline',
  '63'
); 
INSERT INTO students (ID,NAME,Value) VALUES (
  '6',
  'Marcela',
  '88'
); 

WITH
topstudents as (
  SELECT  s.name, n.grade, s.value  FROM students s INNER JOIN NOTES n WHERE s.Value > n.MIN_VALUE AND s.Value < n.MAX_VALUE  AND n.GRADE >= 8 
),

regularstudents as (
  SELECT NULL, n.grade, s.value  FROM students s INNER JOIN NOTES n WHERE s.Value > n.MIN_VALUE AND s.Value < n.MAX_VALUE  AND n.GRADE < 8 Order by n.grade DESC, s.name ASC, s.value ASC
)
SELECT * FROM topstudents 
UNION
SELECT * from regularstudents
Order by grade DESC, name ASC, value ASC

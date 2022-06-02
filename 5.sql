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



---Joana gives Eva the task of generating a report containing three columns: Name, Grade and Value. 
-- Joana does not want the names of students who received a grade lower than 8. The report must be in descending order by grade, that is, 
-- the highest grades are inserted first. If there are more than one student with the same grade (8-10) assigned to them, sort those students 
-- in particular by their names in alphabetical order. Finally, if the grade is less than 8, use "NULL" as the name and list them in grades in 
-- descending order. If there are more than one student with the same grade (1-7) assigned to them, sort those students in particular by their grades in ascending order


-- Last sentence is confusing 
-- "If there are more than one student with the same grade (1-7) assigned to them, sort those students in particular by their grades in ascending order"
-- Asumed:
-- "If there are more than one student with the same grade (1-7) assigned to them, sort those students in particular by their value in ascending order"
-- Sample Output coflicts with requirement 
-- "If there are more than one student with the same grade (8-10) assigned to them, sort those students in particular by their names in alphabetical order"
-- and sample output shows:
--Marcela 9 88
--Julia 9 81
-- Assumed sample output was wrong. If this assumption is incorect replace 'name ASC' for 'name DESC'
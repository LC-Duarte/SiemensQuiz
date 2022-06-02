with
pets as (
SELECT name FROM dogs 
UNION
SELECT name from cats)
SELECT DISTINCT name FROM pets
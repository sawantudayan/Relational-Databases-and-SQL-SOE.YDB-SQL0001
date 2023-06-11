#Find those students for whom all of their friends are in different grades from themselves. Return the students names and grades.

SELECT name, grade
FROM Highschooler H1
WHERE grade NOT IN (
  SELECT H2.grade
  FROM Friend, Highschooler H2
  WHERE H1.ID = Friend.ID1 AND H2.ID = Friend.ID2
);
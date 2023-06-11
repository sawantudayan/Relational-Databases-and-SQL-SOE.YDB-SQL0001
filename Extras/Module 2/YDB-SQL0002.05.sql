#Find the name and grade of the student(s) with the greatest number of friends.

SELECT name, grade
FROM Highschooler
INNER JOIN Friend ON Highschooler.ID = Friend.ID1
GROUP BY ID1
HAVING COUNT(*) = (
  SELECT MAX(count)
  FROM (
    SELECT COUNT(*) AS count
    FROM Friend
    GROUP BY ID1
  )
);
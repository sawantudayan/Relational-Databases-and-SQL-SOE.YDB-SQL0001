#Find the number of students who are either friends with Cassandra or are friends of friends of Cassandra. Do not count Cassandra, even though technically she is a friend of a friend.

SELECT COUNT(*)
FROM Friend
WHERE ID1 IN (
  SELECT ID2
  FROM Friend
  WHERE ID1 IN (
    SELECT ID
    FROM Highschooler
    WHERE name = 'Cassandra'
  )
);
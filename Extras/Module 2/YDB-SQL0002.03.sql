#What is the average number of friends per student? (Your result should be just one number.)

SELECT AVG(count)
FROM (
  SELECT COUNT(*) AS count
  FROM Friend
  GROUP BY ID1
);
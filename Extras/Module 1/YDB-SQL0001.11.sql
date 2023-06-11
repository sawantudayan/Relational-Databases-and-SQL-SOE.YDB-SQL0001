# Find the movie(s) with the lowest average rating. Return the movie title(s) and average rating. (Hint: This query may be more difficult to write in SQLite than other systems; you might think of it as finding the lowest average rating and then choosing the movie(s) with that average rating.)

SELECT title, AVG(stars) AS average
FROM Movie
INNER JOIN Rating USING(mId)
GROUP BY mId
HAVING average = (
  SELECT MIN(average_stars)
  FROM (
    SELECT title, AVG(stars) AS average_stars
    FROM Movie
    INNER JOIN Rating USING(mId)
    GROUP BY mId
  )
);
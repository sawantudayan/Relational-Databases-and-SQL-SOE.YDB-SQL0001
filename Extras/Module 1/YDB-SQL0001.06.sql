# For each rating that is the lowest (fewest stars) currently in the database, return the reviewer name, movie title, and number of stars.

SELECT name, title, stars
FROM Movie
INNER JOIN Rating USING(mId)
INNER JOIN Reviewer USING(rId)
WHERE stars = (SELECT MIN(stars) FROM Rating);
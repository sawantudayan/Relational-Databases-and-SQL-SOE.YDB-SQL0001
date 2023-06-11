# For any rating where the reviewer is the same as the director of the movie, return the reviewer name, movie title, and number of stars.

SELECT name, title, stars
FROM Movie
INNER JOIN Rating USING(mId)
INNER JOIN Reviewer USING(rId)
WHERE director = name;
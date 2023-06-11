# Some directors directed more than one movie. For all such directors, return the titles of all movies directed by them, along with the director name. Sort by director name, then movie title. (As an extra challenge, try writing the query both with and without COUNT.)

SELECT name
FROM Reviewer
WHERE (SELECT COUNT(DISTINCT mId) FROM Rating WHERE Rating.rId = Reviewer.rId) >= 3;
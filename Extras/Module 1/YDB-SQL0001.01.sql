# Find the names of all reviewers who rated Gone with the Wind.

SELECT DISTINCT name
FROM Movie
INNER JOIN Rating USING(mId)
INNER JOIN Reviewer USING(rId)
WHERE title = "Gone with the Wind";
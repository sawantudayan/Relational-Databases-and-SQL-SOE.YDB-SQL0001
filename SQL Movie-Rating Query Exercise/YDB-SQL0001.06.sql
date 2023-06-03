#For all cases where the same reviewer rated the same movie twice and gave it a higher rating the second time, return the reviewers name and the title of the movie.


SELECT name, title
FROM Movie
INNER JOIN Rating R1 USING(mId)
INNER JOIN Rating R2 USING(rId, mId)
INNER JOIN Reviewer USING(rId)
WHERE R1.ratingDate < R2.ratingDate AND R1.stars < R2.stars;
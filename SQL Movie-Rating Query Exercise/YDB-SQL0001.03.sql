#Find the titles of all movies that have no ratings.

SELECT title
FROM Movie
LEFT JOIN Rating
ON Movie.mID = Rating.mID
WHERE stars IS NULL;
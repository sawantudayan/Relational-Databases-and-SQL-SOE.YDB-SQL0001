#Write a query to return the ratings data in a more readable format: reviewer name, movie title, stars, and ratingDate. Also, sort the data, first by reviewer name, then by movie title, and lastly by number of stars.


SELECT name, title, stars, ratingDate
FROM Rating
INNER JOIN Movie
ON Rating.mID = Movie.mID
INNER JOIN Reviewer
ON Rating.rID = Reviewer.rID
ORDER BY name, title, stars ASC;
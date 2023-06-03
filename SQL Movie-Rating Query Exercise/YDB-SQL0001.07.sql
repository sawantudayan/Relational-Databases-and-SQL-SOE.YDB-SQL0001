#For each movie that has at least one rating, find the highest number of stars that movie received. Return the movie title and number of stars. Sort by movie title.


SELECT title, max(stars)
FROM Movie
JOIN Rating ON Rating.mID = Movie.mID
GROUP BY Rating.mID, title
ORDER BY title ASC;
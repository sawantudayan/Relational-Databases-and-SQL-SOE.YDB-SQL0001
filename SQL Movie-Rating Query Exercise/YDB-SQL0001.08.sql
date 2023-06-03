#For each movie, return the title and the rating spread, that is, the difference between highest and lowest ratings given to that movie. Sort by rating spread from highest to lowest, then by movie title.


SELECT title, max(stars)-min(stars) AS rating_spread
FROM Movie
JOIN Rating ON Rating.mID = Movie.mID
GROUP BY Rating.mID, title
ORDER BY rating_spread DESC, title ASC;
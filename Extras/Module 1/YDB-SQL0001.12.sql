# For each director, return the directors name together with the title(s) of the movie(s) they directed that received the highest rating among all of their movies, and the value of that rating. Ignore movies whose director is NULL.

SELECT director, title, MAX(stars)
FROM Movie
INNER JOIN Rating USING(mId)
WHERE director IS NOT NULL
GROUP BY director;
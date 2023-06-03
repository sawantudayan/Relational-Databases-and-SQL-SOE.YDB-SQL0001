#Some reviewers didnt provide a date with their rating. Find the names of all reviewers who have ratings with a NULL value for the date.


SELECT name
FROM Reviewer
LEFT JOIN Rating
ON Reviewer.rID = Rating.rID
WHERE ratingDate IS NULL;
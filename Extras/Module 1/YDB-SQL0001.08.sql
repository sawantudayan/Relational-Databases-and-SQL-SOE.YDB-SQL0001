# Find the names of all reviewers who have contributed three or more ratings. (As an extra challenge, try writing the query without HAVING or without COUNT.)

SELECT name
FROM Reviewer
WHERE (SELECT COUNT(*) FROM Rating WHERE Rating.rId = Reviewer.rId) >= 3;


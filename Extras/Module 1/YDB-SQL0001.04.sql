# Find the titles of all movies not reviewed by Chris Jackson.

SELECT title
FROM Movie
WHERE mId NOT IN (
  SELECT mId
  FROM Rating
  INNER JOIN Reviewer USING(rId)
  WHERE name = "Chris Jackson"
);

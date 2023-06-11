# Return all reviewer names and movie names together in a single list, alphabetized. (Sorting by the first name of the reviewer and first word in the title is fine; no need for special processing on last names or removing The.)

SELECT title FROM Movie
UNION
SELECT name FROM Reviewer
ORDER BY name, title;
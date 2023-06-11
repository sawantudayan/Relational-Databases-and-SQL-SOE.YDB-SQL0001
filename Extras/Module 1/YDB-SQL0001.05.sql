# For all pairs of reviewers such that both reviewers gave a rating to the same movie, return the names of both reviewers. Eliminate duplicates, dont pair reviewers with themselves, and include each pair only once. For each pair, return the names in the pair in alphabetical order.

SELECT DISTINCT Re1.name, Re2.name
FROM Rating R1, Rating R2, Reviewer Re1, Reviewer Re2
WHERE R1.mID = R2.mID
AND R1.rID = Re1.rID
AND R2.rID = Re2.rID
AND Re1.name < Re2.name
ORDER BY Re1.name, Re2.name;
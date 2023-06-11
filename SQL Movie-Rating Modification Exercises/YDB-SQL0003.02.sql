# For all movies that have an average rating of 4 stars or higher, add 25 to the release year. (Update the existing tuples; dont insert new tuples.)

update Movie
set year = year+25
where mID in (select mID
      from (select mID, avg(stars) as avgStars
            from Rating group by mID)
      where avgStars>=4)
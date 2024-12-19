show tables;
select * from imdb;
select count(*) from imdb;

-- 1. Movies with Ratings Above 9.0 
   select IMDB_Rating as ratings_above_9 from imdb 
   where IMDB_Rating > 9.0;
   
-- 2. Most Common Genres Find the top 5 most frequent genres in the dataset.
select Genre as Top_5_gonre from imdb 
group by Genre
order by Genre desc
limit 5;

-- 3. Movies Released in the Last Decade
select Released_Year, Series_Title from imdb
where Released_Year > Year(CURDATE()) - 10
order by Released_Year DESC;

-- 4. Director with the Highest Average Rating Find the director whose movies have the highest average rating.
select Director, avg(IMDB_Rating) AS Average_Rating from imdb 
group by Director
order by Average_Rating desc
limit 1;

-- 5. Actors Appearing in Most Movies Identify actors who appear most frequently
select star1 as Actors, count(*) as movie_count from imdb
group by Actors
order by movie_count DESC
limit 5;   
select * from imdb;
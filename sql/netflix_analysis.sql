DROP TABLE IF EXISTS netflix;
CREATE TABLE netflix
(
	show_id	VARCHAR(5),
	type    VARCHAR(10),
	title	VARCHAR(250),
	director VARCHAR(550),
	casts	VARCHAR(1050),
	country	VARCHAR(550),
	date_added	VARCHAR(55),
	release_year	INT,
	rating	VARCHAR(15),
	duration	VARCHAR(15),
	listed_in	VARCHAR(250),
	description VARCHAR(550)
);

select * from netflix;

select count(*) as total_content from netflix;

select distinct type from netflix;

select * from netflix;

-- Solutions of 15 business problems
-- 1. Count the number of Movies vs TV Shows
select type , count(*) as total_content
from netflix 
group by type;

-- 2. Find the most common rating for movies and TV shows
SELECT type, rating
FROM 
(
SELECT 
type,
rating,
COUNT(*) AS total,
RANK() OVER (PARTITION BY type ORDER BY COUNT(*) DESC) AS ranking
FROM netflix
GROUP BY type, rating
) t
WHERE ranking = 1;

-- 3. List all movies released in a specific year (e.g., 2020)

select * from netflix
where type = 'Movie' and release_year = 2020;

-- 4. Find the top 5 countries with the most content on Netflix
select 
trim(unnest(string_to_array(country,','))) as new_country , 
count(show_id) from netflix
group by 1
order by count(show_id) DESC limit 5;

-- 5. Identify the longest movie

SELECT *
FROM netflix
WHERE type = 'Movie'
ORDER BY split_part(duration, ' ', 1)::INT DESC
LIMIT 1;

-- 6. Find content added in the last 5 years 
select 
*
from netflix 
where 
to_date(date_added,'Month DD, YYYY') >= current_date - interval '5 years'


-- 7. Find all the movies/TV shows by director 'Rajiv Chilaka'!
-- m-1:
select * from 
(
select *,
trim(unnest(string_to_array(director, ','))) as director_name 
from netflix  
) as t1 
where t1.director_name = 'Rajiv Chilaka'
-- m-2:
select * from netflix 
where director ilike '%Rajiv Chilaka%'

-- 8. List all TV shows with more than 5 seasons
select * from netflix 
where type = 'TV Show'
and
split_part(duration,' ',1)::numeric > 5
-- 9. Count the number of content items in each genre

select 
trim(unnest(string_to_array(listed_in, ','))) as genre,
count(show_id) as total_content
from netflix
group by 1;

-- 10. Find each year and the average percent numbers of content release by India on netflix. 
-- return top 5 year with highest avg content release !

select 
extract(year from to_date(date_added, 'Month DD, YYYY')) as year,
count(*) as yearly,
round(count(*)::numeric/(select count(*) from netflix where country ilike'%India%')::numeric*100 ,2) as avg
from netflix
where country ilike '%India%'
group by 1
order by avg DESC
limit 5;

-- 11. List all movies that are documentaries
select * from netflix 
where listed_in ilike '%documentaries%'

-- 12. Find all content without a director
select * from netflix
where director is Null

-- 13. Find how many movies actor 'Salman Khan' appeared in last 10 years!

select count(*) from netflix
where casts ilike '%salman khan%'
and
release_year > extract (year from current_date) - 10
AND type = 'Movie';


-- 14. Find the top 10 actors who have appeared in the highest number of movies produced in India.
select 
--show_id,
--casts,
trim(unnest(string_to_array(casts, ','))) as actors,
count(*) as total_content
from netflix
where country ilike '%India%'
group by 1 
order by 2 DESc
limit 10

-- Question 15:
-- Categorize the content based on the presence of the keywords 'kill' and 'violence' in 
-- the description field. Label content containing these keywords as 'Bad' and all other 
-- content as 'Good'. Count how many items fall into each category.
with new_table as 
(
select *,
case
when 
   description ilike '%kill%' or
   description ilike '%violence%' then 'bad_content'
   else 'good_content'
   end category 
from netflix   
)
select category,count(*) from new_table
group by category;










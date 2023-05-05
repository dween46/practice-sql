-- Select name from people and sort alphabetically
Select name 
from people
order by name

-- Select the title and duration from longest to shortest film
Select title, duration
from films
order by duration desc

-- Select the release year, duration, and title sorted by release year and duration
SELECT release_year, duration, title 
FROM films
ORDER BY release_year, duration


-- Select the certification, release year, and title sorted by certification and release year
select certification, release_year, title
from films
order by certification, release_year desc


-- Find the release_year and film_count of each year
select release_year, count(title) as film_count
from films
group by release_year


-- Find the release_year and average duration of films for each year
select release_year, avg(duration) as avg_duration
from films
group by release_year

-- Find the release_year, country, and max_budget, then group and order by release_year and country
select release_year, country, max(budget) as max_budget
from films
group by release_year, country
order by release_year, country

--Which release_year had the most language diversity?
select release_year, count(distinct language) as max_lang
from films
group by release_year
order by max_lang desc


-- Select the country and distinct count of certification as certification_count
select country, count(distinct certification) as certification_count
from films
-- Group by country
group by country
-- Filter results to countries with more than 10 different certifications
having count(distinct certification) > 10


-- Select the country and average_budget from films
select country , avg(budget) as average_budget
from films
-- Group by country
group by country
-- Filter to countries with an average_budget of more than one billion
having avg(budget) >1000000000
-- Order by descending order of the aggregated budget
order by average_budget desc

-- Select the budget for films released after 1990 grouped by year
SELECT release_year
FROM films
WHERE release_year > 1990
GROUP BY release_year;

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
-- Order the results from highest to lowest average gross and limit to one
ORDER BY  avg_gross desc
LIMIT 1;
-- Query the sum of film durations
select sum(duration) as total_duration
from films

-- Calculate the average duration of all films
select AVG(duration) as average_duration from films

-- Find the latest release_year
select max(release_year) as latest_year
from films

-- Find the duration of the shortest film
select min(duration) as shortest_film
from films


-- Calculate the sum of gross from the year 2000 or later
select sum(gross) as total_gross
from films
where release_year >= 2000

-- Calculate the average gross of films that start with A
SELECT AVG(gross) AS avg_gross_A
FROM films
WHERE title LIKE 'A%';

-- Calculate the lowest gross film in 1994
select min(gross) as lowest_gross
from films
where release_year = 1994

-- Calculate the highest gross film released between 2000-2012
select max(gross) as highest_gross
from films
where release_year >= 2000 and release_year <= 2012

-- Round the average number of facebook_likes to one decimal place
select round(avg(facebook_likes) , 1) as avg_facebook_likes
from reviews

-- Calculate the average budget rounded to the thousands
select round(avg(budget), -3) as avg_budget_thousands
from films


--Arithmatic

-- Calculate the title and duration_hours from films
SELECT title, (duration/60) as duration_hours
FROM films;


-- Calculate the percentage of people who are no longer alive
SELECT count(deathdate) * 100.0 / count(name) AS percentage_dead
FROM people;

-- Find the number of decades in the films table
SELECT (max(release_year) - min(release_year)) / 10.0 AS number_of_decades
FROM films;

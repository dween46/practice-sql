-- Select film_ids and imdb_score with an imdb_score over 7.0
SELECT film_id, imdb_score 
FROM reviews
WHERE imdb_score > 7

-- Select film_ids and facebook_likes for ten records with less than 1000 likes 
SELECT film_id, facebook_likes 
FROM reviews
WHERE facebook_likes < 1000
LIMIT 10;

-- Count the records with at least 100,000 votes
SELECT COUNT(film_id) AS films_over_100k_votes
FROM reviews
WHERE num_votes >= 100000;

-- Count the Spanish-language films
SELECT COUNT(language) AS count_spanish
FROM films
WHERE language = 'Spanish';


--AND, OR, BETWEEN command
-- Select the title and release_year for all German-language films released before 2000
SELECT title, release_year
FROM films
WHERE release_year < 2000 AND language = 'German'

-- Update the query to see all German-language films released after 2000
SELECT title, release_year
FROM films
WHERE release_year > 2000
	AND language = 'German';

-- Select all records for German-language films released after 2000 and before 2010
SELECT *
FROM films
WHERE release_year > 2000
	AND release_year < 2010
	AND language = 'German';



-- Find the title and year of films from the 1990 or 1999
SELECT title, release_year
FROM films
WHERE release_year = 1990 OR release_year = 1999

-- Add a filter to see only English or Spanish-language films
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999) 
    AND (language = 'English' OR language = 'Spanish');


-- Filter films with more than $2,000,000 gross
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999) 
    AND (language = 'English' OR language = 'Spanish')
    AND gross >2000000;



--New section

-- Select the title and release_year for films released between 1990 and 2000
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND  2000;

-- Narrow down your query to films with budgets > $100 million
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000;

-- Restrict the query to only Spanish-language films
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
	AND language = 'Spanish';

-- Amend the query to include Spanish or French-language films
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
	AND (language = 'French' OR language = 'Spanish');
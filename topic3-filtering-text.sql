-- Select the names that start with B
SELECT *
FROM people
WHERE name LIKE 'B%'


-- Select the names that have r as the second letter
SELECT *
FROM people
WHERE name LIKE '_r%'

-- Select names that don't start with A
SELECT *
FROM people
WHERE name NOT LIKE 'A%'


 -- Find the title and release_year for all films over two hours in length released in 1990 and 2000
SELECT title, release_year
FROM films
WHERE duration > 120 AND release_year IN (1990, 2000)

-- Find the title and language of all films in English, Spanish, and French
SELECT title, language
FROM films
WHERE language IN ('English', 'Spanish', 'French')

-- Find the title, certification, and language all films certified NC-17 or R that are in English, Italian, or Greek
SELECT title, certification, language
FROM films
WHERE certification IN ('NC-17', 'R') 
    AND language IN ('English', 'Italian', 'Greek')


-- Count the unique titles
SELECT COUNT(DISTINCT title) AS nineties_english_films_for_teens
FROM films
-- Filter to release_years to between 1990 and 1999
WHERE release_year BETWEEN 1990 AND 1999
-- Filter to English-language films
	AND language =  'English'
-- Narrow it down to G, PG, and PG-13 certifications
	AND certification IN ('G','PG', 'PG-13');


-- Creating a database and importing excel csv files 
CREATE DATABASE MoviesDB;

-- Create Table 
CREATE TABLE languages (
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50)
);

-- Insert Values In table 

INSERT into languages
(language_id,NAME)
values 
(1,"Hindi"),
(2,"Telugu"),
(3,"Kannada"),
(4,"Tamil"),
(5,"English"),
(6,"French"),
(7,"Bengali"),
(8,"Gujrati");


-- ADD CONSTRAINS 
ALTER TABLE movies
ADD CONSTRAINT chk_imdb_rating CHECK (imdb_rating <= 10);

-- Disabled SAFE MODE 
SET SQL_SAFE_UPDATES=0;

-- REMOVED EXTRA SPACES i.e LEADING SPACES FROM STUDIOS  
UPDATE movies
SET studio = TRIM(studio);

UPDATE movies
SET studio = 'Not Available'
WHERE studio = '';

-- WHERE CLAUSE 
SELECT * FROM movies
WHERE release_year > 2000 AND imdb_rating > 8.0;

-- IN LIST 
SELECT * FROM movies
WHERE Studio IN ("Marvel studios", "Hombale Films", "Columbia Pictures");

-- LIKE 
SELECT * FROM movies
WHERE movie_id_title LIKE "Avenger%";

-- ORDER BY 
-- Question: Display all movies ordered by imdb_rating in descending order.
SELECT 
    movie_id_title AS Title, imdb_rating AS Rating
FROM
    movies
ORDER BY Rating DESC;

-- DISTINCT 
-- Question: List all unique industries in the movies dataset.
SELECT DISTINCT industry FROM movies;

-- LIMIT (TOP 5 ) 
-- Question : Top 5 avg rating of studios 

SELECT movie_id_title as Title,imdb_rating as Rating FROM movies
Limit  5 ;

-- IS NULL / IS NOT NULL
-- Question: Find all movies where the studio information is missing.

SELECT * FROM movies
WHERE imdb_rating IS NULL;

-- CASE
-- Question: Categorize movies based on IMDb rating: "Excellent" (8+), "Good" (5-7.9), or "Average" (<5).
SELECT movie_id_title as Title ,imdb_rating as Rating ,
CASE
        WHEN imdb_rating >= 8 THEN "Excellent"
        WHEN imdb_rating BETWEEN 5 AND 7.9 THEN "Good"
        ELSE "Average"
        END  as Rating_category
        FROM movies;

-- GROUP BY with HAVING
-- Question: List studios with an average movie rating above 7.

SELECT studio, ROUND(AVG(imdb_rating),1) as AVG_RATING FROM movies
GROUP BY studio
HAVING AVG_RATING>7;

-- String Functions 
-- Question: Convert movie titles to uppercase.

SELECT UPPER(industry) AS industry_upper FROM movies;


-- Math Functions
-- Question: Round revenue to the nearest million.
SELECT abs(-1000) as Absolute_result,
floor(5.3) as floor_result,
ceil(5.3) as ceeil_result,
floor(-5.3) as floor_result,
ceil(-5.3) as ceil_result,
power(2,3) as  power_result,
Sqrt(225) as Square_root;

-- DATE FUNCTIONS 
-- Question: Calculate the age of actors based on their birth year.

SELECT name, (YEAR(CURDATE()) - birth_year) AS age FROM actors;


-- ARITHMETIC operators
SELECT ROUND(SUM(revenue),2) as TOTAL_REVENUE,
 ROUND(AVG(budget),2) as AVG_REVENUE,
 MAX(revenue) as MAX_REVENUE,
 MIN(revenue) as MIN_REVENUE
 FROM financials;

-- JOIN 
SELECT m.movie_id_title, l.name AS language
FROM movies m
JOIN languages l ON m.language_id = l.language_id;














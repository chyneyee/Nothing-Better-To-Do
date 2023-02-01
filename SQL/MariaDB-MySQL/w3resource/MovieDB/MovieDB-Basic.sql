/* 01-02-2023 5:01 pm
 * Reference: https://www.w3resource.com/sql-exercises/movie-database-exercise/basic-exercises-on-movie-database.php
 * Movie Database - BASIC
 */
 
 /* 1. From the following table, write a SQL query to find the name and year of the movies. 
 Return movie title, movie release year. */
SELECT mov_title, mov_year FROM movie;

/* 2. From the following table, write a SQL query to find when the movie 'American Beauty' released. 
Return movie release year. */
SELECT mov_year FROM movie WHERE mov_title = 'American Beauty';

/* 3. From the following table, write a SQL query to find the movie that was released in 1999. 
Return movie title. */
SELECT mov_title FROM movie WHERE mov_year = 1999;

/* 4. From the following table, write a SQL query to find those movies, which were released before 1998. 
Return movie title. */
SELECT mov_title FROM movie WHERE mov_year < 1998;

/* 5. From the following tables, write a SQL query to find the name of all reviewers and movies together in a single list. */
SELECT m.mov_title FROM movie m
UNION
	(SELECT r.reviewer FROM reviewer);

/* 6. From the following table, write a SQL query to find all reviewers who have rated seven or more stars to their rating. 
Return reviewer name. */
SELECT r.rev_name FROM reviewer r, rating g
WHERE r.rev_id = g.rev_id
AND g.rev_starts >= 7
AND r.rev_name IS NOT NULL;

/* 7. From the following tables, write a SQL query to find the movies without any rating. 
Return movie title. */
SELECT mov_title FROM movie
WHERE mov_id NOT IN
	(SELECT mov_id FROM rating);

/* 8. From the following table, write a SQL query to find the movies with ID 905 or 907 or 917. 
Return movie title. */
SELECT mov_title FROM movie
WHERE mov_id IN (905,907,917);

/* 9. From the following table, write a SQL query to find the movie titles that contain the word 'Boogie Nights'. 
Sort the result-set in ascending order by movie year. Return movie ID, movie title and movie release year. */
SELECT mov_id, mov_title, mov_year
FROM movie
WHERE mov_title LIKE '%Boogie%Nights%'
ORDER BY mov_year;

/* 10. From the following table, write a SQL query to find those actors with the first name 'Woody' and the last name 'Allen'. 
Return actor ID. */
SELECT act_id FROM actor
WHERE act_fname = 'Woody' AND act_lname = 'Allen';

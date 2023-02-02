/* 02-02 4:26 pm
 * Reference: https://www.w3resource.com/sql-exercises/movie-database-exercise/joins-exercises-on-movie-database.php
 * Movie Database - Joins
 */

/* 1. From the following table, write a SQL query to find all reviewers whose ratings contain a NULL value. 
Return reviewer name. */
SELECT rev_name FROM reviewer r
JOIN rating g 
ON r.rev_id = g.rev_id
WHERE rev_stars IS NULL;

/* 2. From the following table, write a SQL query to find out who was cast in the movie 'Annie Hall'. 
Return actor first name, last name and role. */
SELECT act_fname, act_lname, role FROM actor a
JOIN movie_cast c
ON a.act_id = c.act_id
JOIN movie m
ON c.mov_id = m.mov_id
WHERE m.mov_title = 'Annie Hall';

/* 3. From the following table, write a SQL query to find the director who directed a movie that featured a role in 'Eyes Wide Shut'. 
Return director first name, last name and movie title. */
SELECT dir_fname, dir_lname, mov_title FROM director a
JOIN movie_direction b
ON a.dir_id = b.dir_id
JOIN movie_cast c
ON b.mov_id = c.mov_id
JOIN movie m
ON c.mov_id = m.mov_id
WHERE m.mov_title = 'Eyes Wide Shut';

/* 4. From the following tables, write a SQL query to find the director of a movie that cast a role as Sean Maguire. 
Return director first name, last name and movie title. */
SELECT dir_fname, dir_lname, mov_title FROM director a
JOIN movie_direction b
ON a.dir_id = b.dir_id
JOIN movie_cast c
ON b.mov_id = c.mov_id
JOIN movie m
ON c.mov_id = m.mov_id
WHERE c.role = 'Sean Maguire';

/* 5. From the following table, write a SQL query to find out which actors have not appeared in any movies 
between 1990 and 2000 (Begin and end values are included.). 
Return actor first name, last name, movie title and release year. */
SELECT act_fname, act_lname, mov_title, mov_year FROM actor a
JOIN movie_cast c
ON a.act_id = c.act_id
JOIN movie m
ON c.mov_id = m.mov_id
WHERE mov_year NOT BETWEEN 1990 and 2000;

/* 6. From the following table, write a SQL query to find the directors who have directed films in a variety of genres. 
Group the result set on director first name, last name and generic title. Sort the result-set in ascending order by director first name and last name. 
Return director first name, last name and number of genres movies. */
SELECT dir_fname,dir_lname, gen_title,count(gen_title)
FROM director
NATURAL JOIN movie_direction
NATURAL JOIN movie_genres
NATURAL JOIN genres
GROUP BY dir_fname, dir_lname,gen_title
ORDER BY dir_fname,dir_lname;

/* 7. From the following table, write a SQL query to find the movies with year and genres. 
Return movie title, movie year and generic title. */
SELECT mov_title, mov_year, gen_title
FROM movie
NATURAL JOIN movie_genres
NATURAL JOIN genres;

/* 8. From the following tables, 
write a SQL query to find all the movies with year, genres, and name of the director. */
SELECT mov_year, gen_title, mov_title, dir_fname, dir_lname
FROM movie
NATURAL JOIN movie_genres
NATURAL JOIN genres
NATURAL JOIN movie_direction
NATURAL JOIN director;

/* 9. From the following tables, write a SQL query to find the movies released before 1st January 1989. 
Sort the result-set in descending order by date of release. Return movie title, release year, date of release, duration, 
and first and last name of the director. */
SELECT mov_title, mov_year, mov_dt_rel, mov_time, dir_fname, dir_lname
FROM movie m
JOIN movie_direction md
ON m.mov_id = md.mov_id
JOIN director d
ON md.dir_id = d.dir_id
WHERE mov_dt_rel < '01/01/1989'
ORDER BY mov_dt_rel desc;

/* 10. From the following table, write a SQL query to calculate the average movie length and count the number of movies in each genre. 
Return genre title, average time and number of movies for each genre. */
SELECT gen_title, AVG(mov_time), COUNT(gen_title)
FROM movie
NATURAL JOIN movie_genres
NATURAL JOIN genres
GROUP BY gen_title;

/* 11. From the following table, write a SQL query to find movies with the shortest duration. 
Return movie title, movie year, director first name, last name, actor first name, last name and role. */
SELECT mov_title, mov_year, dir_fname, dir_lname, act_fname, act_lname, role FROM  movie
NATURAL JOIN movie_direction
NATURAL JOIN movie_cast
NATURAL JOIN director
NATURAL JOIN actor
WHERE mov_time = 
	(SELECT MIN(mov_time) FROM movie);

/* 12. From the following table, write a SQL query to find the years in which a movie received a rating of 3 or 4. 
Sort the result in increasing order on movie year. */
SELECT DISTINCT(mov_year) FROM movie, rating
WHERE movie.mov_id = rating.mov_id
AND rating.rev_stars IN (3, 4);

/* 13. From the following tables, write a SQL query to get the reviewer name, movie title, and stars in an order that reviewer name will come first, 
then by movie title, and lastly by number of stars. */
SELECT rev_name, mov_title, rev_stars
FROM movie 
NATURAL JOIN rating 
NATURAL JOIN reviewer
WHERE rev_name IS NOT NULL
ORDER BY rev_name, mov_title, rev_stars;

/* 14. From the following table, write a SQL query to find those movies that have at least one rating and received the most stars. 
Sort the result-set on movie title. 
Return movie title and maximum review stars. */
SELECT mov_title, MAX(rev_stars)
FROM movie
INNER JOIN rating USING(mov_id)
GROUP BY mov_title 
HAVING MAX(rev_stars) > 0
ORDER BY mov_title;

/* 15. From the following table, write a SQL query to find out which movies have received ratings. 
Return movie title, director first name, director last name and review stars. */
SELECT mov_title, dir_fname, dir_lname, rev_stars
FROM movie m, movie_direction md, director d, rating r
WHERE m.mov_id = md.mov_id
AND md.dir_id = d.dir_id
AND md.mov_id = r.mov_id
AND rev_stars IS NOT NULL;

/* 16. From the following table, write a SQL query to find movies in which one or more actors have acted in more than one film. 
Return movie title, actor first and last name, and the role. */
SELECT mov_title, act_fname, act_lname, role
FROM movie 
JOIN movie_cast ON movie_cast.mov_id = movie.mov_id 
JOIN actor ON movie_cast.act_id = actor.act_id
WHERE actor.act_id IN 
	(SELECT act_id FROM movie_cast 
GROUP BY act_id HAVING COUNT(*) >= 2);

/* 17. From the following tables, write a SQL query to find the actor whose first name is 'Claire' and last name is 'Danes'. 
Return director first name, last name, movie title, actor first name and last name, role. */
SELECT dir_fname, dir_lname, mov_title, act_fname, act_lname, role FROM actor
JOIN movie_cast ON actor.act_id = movie_cast.act_id
JOIN movie_direction ON movie_cast.mov_id = movie_direction.mov_id
JOIN director ON movie_direction.dir_id = director.dir_id
JOIN movie ON movie.mov_id = movie_direction.mov_id
WHERE act_fname='Claire' 
AND act_lname='Danes';

/* 18. From the following table, write a SQL query to find for actors whose films have been directed by them. 
Return actor first name, last name, movie title and role. */
SELECT act_fname, act_lname, mov_title, role
FROM actor a
JOIN movie_cast mc ON a.act_id = mc.act_id
JOIN movie_direction md ON mc.mov_id = md.mov_id
JOIN director d ON md.dir_id = d.dir_id
JOIN movie m ON m.mov_id = md.mov_id
WHERE act_fname = dir_fname
AND act_lname = dir_lname;

/* 19. From the following tables, write a SQL query to find the cast list of the movie ‘Chinatown’. 
Return first name, last name. */
SELECT a.act_fname, a.act_lname FROM movie_cast c
JOIN actor a ON c.act_id = a.act_id
WHERE mov_id =
	(SELECT mov_id FROM movie WHERE mov_title = 'Chinatown');

/* 20. From the following tables, write a SQL query to find those movies where actor’s first name is 'Harrison' and last name is 'Ford'. 
Return movie title. */
SELECT m.mov_title FROM movie m
JOIN movie_cast c ON m.mov_id = c.mov_id
WHERE c.act_id IN
	(SELECT act_id FROM actor WHERE act_fname = 'Harrison' AND act_lname = 'Ford');
  
/* 21. From the following tables, write a SQL query to find the highest-rated movies. 
Return movie title, movie year, review stars and releasing country. */
SELECT mov_title, mov_year, rev_stars, mov_rel_country FROM movie m, rating g
WHERE m.mov_id = g.mov_id
AND rev_stars =
	(SELECT MAX(rev_stars) FROM rating);

/* 22. From the following tables, write a SQL query to find the highest-rated ‘Mystery Movies’. 
Return the title, year, and rating. */
SELECT mov_title, mov_year, rev_stars FROM movie 
NATURAL JOIN movie_genres 
NATURAL JOIN genres 
NATURAL JOIN rating
WHERE gen_title = 'Mystery' AND rev_stars >= ALL 
	(SELECT rev_stars FROM rating 
NATURAL JOIN movie_genres 
NATURAL JOIN genres
WHERE gen_title = 'Mystery');

/* 23. From the following tables, write a SQL query to find the years when most of the ‘Mystery Movies’ produced. 
Count the number of generic title and compute their average rating. Group the result set on movie release year, generic title. 
Return movie year, generic title, number of generic title and average rating. */
SELECT mov_year, gen_title, COUNT(gen_title), AVG(rev_stars)
FROM movie 
NATURAL JOIN movie_genres 
NATURAL JOIN genres
NATURAL JOIN rating
WHERE gen_title = 'Mystery' 
GROUP BY mov_year, gen_title;

/* 24. From the following tables, write a query in SQL to generate a report, which contain the fields movie title, 
name of the female actor, year of the movie, role, movie genres, the director, date of release, and rating of that movie. */
SELECT mov_title, act_fname, act_lname, 
mov_year, role, gen_title, dir_fname, dir_lname, 
mov_dt_rel, rev_stars
FROM movie 
NATURAL JOIN movie_cast
NATURAL JOIN actor
NATURAL JOIN movie_genres
NATURAL JOIN genres
NATURAL JOIN movie_direction
NATURAL JOIN director
NATURAL JOIN rating
WHERE act_gender = 'F';

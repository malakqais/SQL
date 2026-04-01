CREATE DATABASE MALAK_MOVIES;
DROP TABLE IF EXISTS MOVIE_WATCHLIST;
CREATE TABLE MOVIE_WATCHLIST(
movie_id INT PRIMARY KEY ,

title VARCHAR(50) NOT NULL,

rating DECIMAL (3,2) ,

genre VARCHAR(50),

watch_date DATE,

platform VARCHAR(50) NOT NULL,

duration_minutes INT,

watched_again BIT,

DIRECTOR VARCHAR(50)


);


INSERT INTO MOVIE_WATCHLIST
(movie_id  ,title ,rating ,genre ,watch_date ,platform,duration_minutes ,watched_again ,DIRECTOR )
VALUES
(1, 'Cinderella', 7.3, 'Animation', '2024-01-10', 'Disney+', 74, 1,'M'),

(2, 'Aladdin', 8.0, 'Animation', '2024-01-15', 'Disney+', 90, 1,'M'),

(3, 'Snow White and the Seven Dwarfs', 7.6, 'Animation', '2024-01-20', 'Disney+', 83, 0,'M'),

(4, 'Tangled', 7.7, 'Animation', '2024-02-01', 'Disney+', 100, 1,'M'),

(5, 'Frozen', 7.5, 'Animation', '2024-02-10', 'Disney+', 102, 0,'M'),

(6, 'Brave', 7.1, 'Animation', '2024-02-18', 'Disney+', 93, 0,'M'),

(7, 'The Little Mermaid', 7.8, 'Animation', '2024-03-01', 'Disney+', 83, 1,'M'),

(8, 'Beauty and the Beast', 8.1, 'Animation', '2024-03-10', 'Disney+', 84, 1,'M');


 SELECT * FROM MOVIE_WATCHLIST;

 SELECT AVG(rating) AS average
 FROM MOVIE_WATCHLIST;

  SELECT MAX(rating) AS maximum
 FROM MOVIE_WATCHLIST;

  SELECT COUNT(rating) AS count_
 FROM MOVIE_WATCHLIST;

UPDATE movie_watchlist
SET rating = rating + 0.5
WHERE rating IN (SELECT TOP 3 rating
FROM movie_watchlist
ORDER BY rating DESC) ; 

SELECT * FROM MOVIE_WATCHLIST;

DELETE FROM movie_watchlist
WHERE duration_minutes IN (SELECT TOP 2 duration_minutes
FROM movie_watchlist
ORDER BY duration_minutes ASC);

SELECT * FROM MOVIE_WATCHLIST;

ALTER TABLE  MOVIE_WATCHLIST
ADD review_notes VARCHAR(300);

SELECT * FROM MOVIE_WATCHLIST;

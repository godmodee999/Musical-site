SELECT title, duration
FROM tracks
ORDER BY duration DESC
LIMIT 1;

SELECT title
FROM tracks
WHERE duration >= '00:03:30';

SELECT title
FROM collections
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name
FROM artists
WHERE name NOT LIKE '% %';

SELECT title
FROM tracks
WHERE LOWER(title) LIKE '%мой%' OR LOWER(title) LIKE '%my%';
SELECT g.name, COUNT(ag.artist_id) AS artist_count
FROM genres g
JOIN artist_genre ag ON g.genre_id = ag.genre_id
GROUP BY g.name;

SELECT COUNT(*) AS tracks_count
FROM tracks t
JOIN albums a ON t.album_id = a.album_id
WHERE albums.release_year BETWEEN 2019 AND 2020;

SELECT a.title, AVG(t.duration) AS average_duration
FROM albums a
JOIN tracks t ON a.album_id = t.album_id
GROUP BY a.title;

SELECT DISTINCT artists.name
FROM artists 
WHERE artists.artist_id NOT IN (
    SELECT artist_album.artist_id
    FROM artist_album 
    JOIN albums ON artist_album.album_id = albums.album_id
    WHERE albums.release_year = 2020
);

SELECT DISTINCT c.title
FROM collections c
JOIN collection_track ct ON c.collection_id = ct.collection_id
JOIN tracks t ON ct.track_id = t.track_id
JOIN albums a ON t.album_id = a.album_id
JOIN artist_album aa ON a.album_id = aa.album_id
JOIN artists ar ON aa.artist_id = ar.artist_id
WHERE artists.name = 'Metallica';
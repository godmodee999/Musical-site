INSERT INTO genres (genre_id, name)
VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-Hop');

INSERT INTO artists (artist_id, name)
VALUES
(1, 'Metallica'),
(2, 'Adele'),
(3, 'Eminem'),
(4, 'ImagineDragons');

INSERT INTO albums (album_id, title, release_year)
VALUES
(1, 'Hardwired', 2019),
(2, '30', 2021),
(3, 'Music To Be Murdered By', 2020);

INSERT INTO tracks (track_id, title, duration, album_id)
VALUES
(1, 'My Friend', '00:04:30', 1),
(2, 'Halo', '00:03:45', 1),
(3, 'Easy On Me', '00:03:44', 2),
(4, 'My Life', '00:05:10', 2),
(5, 'Godzilla', '00:03:31', 3),
(6, 'Мой путь', '00:04:20', 3);

INSERT INTO collections (collection_id, title, release_year)
VALUES
(1, 'Best Rock', 2018),
(2, 'Top Hits', 2019),
(3, 'Rap Collection', 2020),
(4, 'Mixed Music', 2021);

INSERT INTO artist_genre (artist_id, genre_id)
VALUES
(1,1),
(2,2),
(3,3),
(4,1),
(4,2);

INSERT INTO artist_album (artist_id, album_id)
VALUES
(1,1),
(2,2),
(3,3);

INSERT INTO collection_track (collection_id, track_id)
VALUES
(1,1),
(1,2),
(2,3),
(2,4),
(3,5),
(3,6),
(4,2),
(4,5);
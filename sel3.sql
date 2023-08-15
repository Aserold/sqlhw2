--Количество исполнителей в каждом жанре:
SELECT g.name, COUNT(*) AS artist_count
FROM artistgenre AS a
JOIN genre AS g ON a.genre_id = g.genre_id
GROUP BY a.genre_id, g.name;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(track_id)
FROM tracks t
JOIN albums a  ON a.album_id = t.album_id
WHERE a.release_year BETWEEN 2019 AND 2020;

--Средняя продолжительность треков по каждому альбому.
SELECT a.album_name, AVG(track_duration_sec) AS avg_duration
FROM tracks AS t
JOIN albums AS a ON t.album_id = a.album_id 
GROUP BY t.album_id, a.album_name
ORDER BY avg_duration DESC;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT a.artist_name
FROM artists AS a
WHERE artist_id NOT IN (
    SELECT artist_id
    FROM artistsalbum AS aa
    JOIN albums AS al ON aa.album_id = al.album_id
    WHERE al.release_year = 2020
);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)
SELECT DISTINCT c.name
FROM collection AS c
JOIN collectiontracks AS ct ON c.collection_id = ct.collection_id
JOIN tracks AS t ON ct.track_id = t.track_id
JOIN albums AS al ON t.album_id = al.album_id
JOIN artistsalbum AS aa ON al.album_id = aa.album_id
JOIN artists AS ar ON aa.artist_id = ar.artist_id
WHERE ar.artist_name = 'Lil Darkie';


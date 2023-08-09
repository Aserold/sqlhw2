--Название и продолжительность самого длительного трека.
SELECT track_name, track_duration_sec
FROM tracks
ORDER BY track_duration_sec DESC
LIMIT 1;

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT track_name, track_duration_sec
FROM tracks
WHERE track_duration_sec >= 210
ORDER BY track_duration_sec DESC;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name, release_year
FROM collection
WHERE release_year BETWEEN 2019 AND 2020;

--Исполнители, чьё имя состоит из одного слова.
SELECT * FROM artists
WHERE CHAR_LENGTH(artist_name) - CHAR_LENGTH(REPLACE(artist_name, ' ', '')) = 0;

--Название треков, которые содержат слово «мой» или «my».
SELECT track_name FROM tracks
WHERE track_name ILIKE '%мой%' OR track_name ILIKE '%my%';
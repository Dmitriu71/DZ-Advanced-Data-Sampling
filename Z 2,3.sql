--Задание 2
--Название и продолжительность самого длительного трека.
SELECT Track_name, Track_duration FROM Track
ORDER BY Track_duration
LIMIT 1;

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT Track_name, Track_duration FROM Track
WHERE Track_duration>=210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT Collection_name, Collection_data FROM Collection
WHERE Collection_data BETWEEN 2018 AND 2021;

--Исполнители, чьё имя состоит из одного слова.
SELECT DISTINCT Executor_name FROM Executor
WHERE Executor_name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT Track_name FROM Track
WHERE lower(Track_name) LIKE '%мой%' OR lower(Track_name) LIKE '%my%';

--Задание 3
--Количество исполнителей в каждом жанре.
SELECT Genre_name, COUNT(Genre_executor.Executor_id) FROM Genre
JOIN Genre_executor ON Genre.id = Genre_executor.Genre_id 
GROUP BY Genre_name
ORDER BY Genre_name;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT Album_name, Album_data, COUNT(Track.id) AS Track FROM Album
JOIN Track ON Track.Album_id = Album.id 
WHERE Album_data BETWEEN 2019 AND 2020
GROUP BY Album_name, Album_data
ORDER BY Album_name;

--Средняя продолжительность треков по каждому альбому.
SELECT Album_name, AVG(Track.Track_duration) AS avg_time FROM Album
JOIN Track ON Track.Album_id = Album.id
GROUP BY Album_name
ORDER BY avg_time;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT Executor_name
FROM Executor 
WHERE Executor_name NOT IN (SELECT DISTINCT Executor_name 
FROM Executor
JOIN Album_executor ON Executor.id = Album_executor.Executor_id 
JOIN Album ON Album.id = Album_executor.Album_id 
WHERE Album_data = 2020)
ORDER BY Executor_name;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT Collection_name, Executor_name FROM Collection
JOIN Track_Collection ON  Collection.id = Track_Collection.Collection_id
JOIN Track ON  Track.id = Track_Collection.Track_id 
JOIN Album ON  Album.id = Track.Album_id 
JOIN Album_executor ON  Album_executor.Album_id  = Album.id 
JOIN Executor ON  Executor.id  = Album_executor.Executor_id
WHERE Executor_name = 'Coldplaу'
ORDER BY Collection_name;


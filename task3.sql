SELECT g.name as Жанр, COUNT(DISTINCT a2.id) as "Количество исполнителей"
FROM ARTISTGENRE A 
JOIN GANRE G ON a.ganre_id = g.id
JOIN ARTIST A2 ON a.artist_id = a2.id
GROUP BY g.name

SELECT SUM(count) AS "Количество треков 2019-2020"
FROM (
  SELECT COUNT(t.name) AS count
  FROM track t
  JOIN album a ON t.album_id = a.id
  WHERE a.year_of_release >= '2019-01-01' and a.year_of_release <= '2020-01-01'
) subquery

SELECT a.ID as "ID Альбом", a.name as Альбом, avg(t.duration) as "Средняя продолжительность треков" from ALBUM A
join TRACK T ON t.ALBUM_ID = a.ID 
GROUP by a.ID, t.ALBUM_ID

SELECT a.name as Исполнители FROM artist a 
JOIN artistalbum a2 ON a2.artist_id = a.id 
JOIN album a3 ON a3.id = a2.album_id 
WHERE EXTRACT(year from a3.YEAR_OF_RELEASE) != 2019
GROUP BY a.name

SELECT c.name from COLLECTION C
join trackcollection t on t.COLLECTION_ID = c.ID 
JOIN TRACK T2 on t2.ALBUM_ID = t.TRACK_ID 
join ARTISTALBUM A on a.ALBUM_ID = t2.ALBUM_ID
where a.ARTIST_ID = 4
GROUP by c.name

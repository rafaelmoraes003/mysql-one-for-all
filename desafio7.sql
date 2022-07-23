SELECT

ar.name AS artista,
al.name AS album,
COUNT(f.artist_id) AS seguidores

FROM Albumn AS al

INNER JOIN Artist as ar
ON al.artist_id = ar.id

INNER JOIN Following AS f
ON f.artist_id = ar.id

GROUP BY ar.name, al.name

ORDER BY seguidores DESC, artista, album;
SELECT 

ar.name AS artista,
al.name AS album

FROM Artist AS ar

INNER JOIN Albumn AS al
ON al.artist_id = ar.id

WHERE ar.name = 'Walter Phoenix';
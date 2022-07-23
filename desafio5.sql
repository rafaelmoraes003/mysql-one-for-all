SELECT 

s.name AS cancao,
COUNT(s.name) AS reproducoes

FROM Songs AS s

INNER JOIN History AS h
ON h.song_id = s.id

GROUP BY h.song_id

ORDER BY reproducoes DESC, cancao
LIMIT 2;
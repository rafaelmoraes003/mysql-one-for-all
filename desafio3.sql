SELECT 

u.username AS usuario,
COUNT(h.user_id) AS qtde_musicas_ouvidas,
ROUND(SUM(s.length_seconds) / 60, 2) AS total_minutos

FROM User AS u

INNER JOIN History AS h
ON u.id = h.user_id

INNER JOIN Songs AS s
ON s.id = h.song_id

GROUP BY h.user_id

ORDER BY u.username;
SELECT 

s.name AS nome,
COUNT(s.name) AS reproducoes

FROM History AS h
INNER JOIN User AS u
ON u.id = h.user_id
AND u.plan_id IN (1,4)


INNER JOIN Songs AS s
ON h.song_id = s.id

GROUP BY nome

ORDER BY nome;
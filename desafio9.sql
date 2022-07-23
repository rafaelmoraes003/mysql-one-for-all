SELECT 

COUNT(played_date) AS quantidade_musicas_no_historico

FROM History AS h

INNER JOIN User AS u
ON u.id = h.user_id

WHERE u.username = 'BILL';
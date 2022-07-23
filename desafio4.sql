SELECT 

u.username AS usuario,
(
	CASE
  		WHEN YEAR(MAX(h.played_date)) = 2021 THEN 'Usuário ativo'
  		ELSE 'Usuário inativo'
  	END
) AS condicao_usuario

FROM User AS u

INNER JOIN History AS h
ON u.id = h.user_id

GROUP BY h.user_id

ORDER BY u.username;
SELECT

FORMAT(MIN(p.price), 2) AS faturamento_minimo,
FORMAT(MAX(p.price), 2) AS faturamento_maximo,
FORMAT(AVG(p.price), 2) AS faturamento_medio,
FORMAT(SUM(p.price), 2) AS faturamento_total

FROM User AS u

INNER JOIN Plan AS p
ON u.plan_id = p.id;
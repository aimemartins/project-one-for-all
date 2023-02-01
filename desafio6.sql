SELECT
    ROUND(MIN(p.plano_valor), 2) AS faturamento_minimo,
    MAX(p.plano_valor) AS faturamento_maximo,
    ROUND(AVG(p.plano_valor), 2) AS faturamento_medio,
    ROUND(SUM(p.plano_valor), 2) AS faturamento_total
FROM SpotifyClone.plano AS p
    INNER JOIN SpotifyClone.usuario AS u ON p.plano_id = u.plano_id;
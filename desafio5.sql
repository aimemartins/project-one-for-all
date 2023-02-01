SELECT
    c.cancao_nome AS cancao,
    count(h.usuario_id) AS reproducoes
FROM SpotifyClone.cancao AS c
    INNER JOIN SpotifyClone.historico AS h ON c.cancao_id = h.cancao_id
GROUP BY c.cancao_id
ORDER BY
    count(h.usuario_id) DESC,
    c.cancao_nome
LIMIT 2;
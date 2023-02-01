SELECT
    c.cancao_nome AS nome,
    COUNT(h.usuario_id) AS reproducoes
FROM SpotifyClone.cancao AS c
    INNER JOIN SpotifyClone.historico AS h ON c.cancao_id = h.cancao_id
    INNER JOIN SpotifyClone.usuario AS u ON u.usuario_id = h.usuario_id
    INNER JOIN SpotifyClone.plano AS p ON p.plano_id = u.plano_id
WHERE
    plano_nome = 'gratuito'
    OR plano_nome = 'pessoal'
GROUP BY cancao_nome
ORDER BY cancao_nome;
SELECT
    u.usuario_nome AS usuario,
    COUNT(h.cancao_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(c.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuario AS u
    INNER JOIN SpotifyClone.historico AS h ON u.usuario_id = h.usuario_id
    INNER JOIN SpotifyClone.cancao AS c ON c.cancao_id = h.cancao_id
GROUP BY usuario_nome
ORDER BY usuario_nome;
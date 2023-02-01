SELECT
    COUNT(h.cancao_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuario AS u
    INNER JOIN SpotifyClone.historico AS h ON u.usuario_id = h.usuario_id
WHERE
    usuario_nome = 'Barbara Liskov';
SELECT
    COUNT(DISTINCT c.cancao_id) AS cancoes,
    COUNT(DISTINCT al.artista_id) AS artistas,
    COUNT(DISTINCT al.album_id) AS albuns
FROM SpotifyClone.cancao AS c
    INNER JOIN SpotifyClone.artista AS ar
    INNER JOIN SpotifyClone.album AS al;
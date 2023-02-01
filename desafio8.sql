SELECT
    Artista.artista_nome AS artista,
    Album.album_nome AS album
FROM
    SpotifyClone.artista AS Artista
    INNER JOIN SpotifyClone.album AS Album ON Artista.artista_id = Album.artista_id
WHERE
    artista_nome = 'Elis Regina';
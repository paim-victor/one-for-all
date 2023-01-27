SELECT
A.nome AS artista,
ALB.nome_album AS album,
COUNT(S.artista_id) AS seguidores
FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.albuns AS ALB
ON ALB.artista_id = A.artista_id
INNER JOIN SpotifyClone.seguidores AS S
ON S.artista_id = A.artista_id
GROUP BY ALB.album_id
ORDER BY seguidores DESC, artista, album;
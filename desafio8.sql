SELECT
A.nome AS artista,
ALB.nome_album AS album
FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.albuns AS ALB
ON ALB.artista_id = A.artista_id
WHERE A.nome = 'Elis Regina'
ORDER BY album;
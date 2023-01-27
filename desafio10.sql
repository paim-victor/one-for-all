SELECT
C.nome_cancao AS nome,
COUNT(H.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS C
INNER JOIN SpotifyClone.historico AS H
ON H.cancao_id = C.cancao_id
INNER JOIN SpotifyClone.usuarios AS U
ON U.usuario_id = H.usuario_id
WHERE U.plano_id = 1 OR U.plano_id = 4
GROUP BY nome
ORDER BY nome;
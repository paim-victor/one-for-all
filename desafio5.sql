SELECT
C.nome_cancao AS cancao,
COUNT(H.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS C
INNER JOIN SpotifyClone.historico AS H
ON C.cancao_id = H.cancao_id
GROUP BY H.cancao_id
ORDER BY reproducoes DESC, C.nome_cancao
LIMIT 2;
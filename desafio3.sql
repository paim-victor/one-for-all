SELECT
U.nome_usuario AS usuario,
COUNT(DISTINCT H.cancao_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(C.duracao_segundos/60), 2) AS total_minutos
FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.historico AS H 
ON H.usuario_id = U.usuario_id
INNER JOIN SpotifyClone.cancoes AS C 
ON H.cancao_id = C.cancao_id
GROUP BY nome_usuario;
SELECT
U.nome_usuario AS usuario,
IF(YEAR(MAX(H.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.historico AS H
ON H.usuario_id = U.usuario_id
GROUP BY H.usuario_id
ORDER BY U.nome_usuario;
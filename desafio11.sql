SELECT
nome_cancao AS nome_musica,
CASE
	WHEN nome_cancao LIKE '%Bard%' 
		THEN REPLACE(nome_cancao, 'Bard', 'QA')
	WHEN nome_cancao LIKE '%Amar%' 
		THEN REPLACE(nome_cancao, 'Amar', 'Code Review')
	WHEN nome_cancao LIKE '%Pais%' 
		THEN REPLACE(nome_cancao, 'Pais', 'Pull Requests')
	WHEN nome_cancao LIKE '%SOUL%' 
		THEN REPLACE(nome_cancao, 'SOUL', 'CODE')
	WHEN nome_cancao LIKE '%SUPERSTAR%' 
		THEN REPLACE(nome_cancao, 'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM SpotifyClone.cancoes
WHERE nome_cancao LIKE '%Bard%' 
	OR nome_cancao LIKE '%Amar%'
	OR nome_cancao LIKE '%Pais%'
	OR nome_cancao LIKE '%SOUL%'
	OR nome_cancao LIKE '%SUPERSTAR%'
ORDER BY nome_cancao DESC;
SELECT 
COUNT( DISTINCT cancoes.cancao_id) as cancoes,
COUNT( DISTINCT artistas.artista_id) as artistas,
COUNT( DISTINCT albuns.album_id) as albuns
FROM 
SpotifyClone.cancoes, 
SpotifyClone.artistas, 
SpotifyClone.albuns;
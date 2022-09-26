SELECT DISTINCT
art.nome_artista AS artista,
alb.nome_album AS album,
COUNT(s.id_artista) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb ON alb.id_artista = art.id_artista
INNER JOIN SpotifyClone.seguidores AS s ON s.id_artista = alb.id_artista
GROUP BY artista, album ORDER BY seguidores DESC, artista, album;
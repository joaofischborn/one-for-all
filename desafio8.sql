SELECT
art.nome_artista AS artista,
alb.nome_album AS album
FROM SpotifyClone.albuns AS alb
INNER JOIN SpotifyClone.artistas AS art
ON art.id_artista = alb.id_artista
WHERE art.nome_artista LIKE 'Elis Regina'
ORDER BY album; 
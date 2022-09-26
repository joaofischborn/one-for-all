SELECT
m.nome_musica AS cancao,
COUNT(h.id_musica) AS reproducoes
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.musicas AS m ON m.id_musica = h.id_musica
GROUP BY m.nome_musica
ORDER BY reproducoes DESC, cancao
LIMIT 2;
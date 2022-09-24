SELECT nome_usuario AS 'usuario',
COUNT(h.id_musica) AS 'qt_de_musicas_ouvidas',
ROUND(SUM(duracao_segundos) / 60, 2) AS 'total_minutos'
FROM SpotifyClone.usuarios AS u
JOIN SpotifyClone.historico h ON u.id_usuario = h.id_usuario
JOIN SpotifyClone.musicas m ON m.id_musica = h.id_musica
GROUP BY 1
ORDER BY 1
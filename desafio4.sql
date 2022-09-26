SELECT DISTINCT u.nome_usuario AS usuario, 
IF(MAX(h.data_reproducao) >= '2021-01-01', 'Usuário ativo', 'Usuário inativo') 
AS 'status_usuario'
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuarios AS u
ON h.id_usuario = u.id_usuario
GROUP BY u.nome_usuario
ORDER BY u.nome_usuario;
DELETE FROM diagnostico
WHERE id_diagnostico = 15;

DELETE FROM dispositivo
WHERE nome LIKE 'Device%';

DELETE FROM visitante
WHERE nome = 'Visitante Temporário';

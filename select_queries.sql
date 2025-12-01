-- 1) JOIN entre visitante e triagem
SELECT v.nome, t.data_hora, t.observacoes
FROM triagem t
JOIN visitante v ON t.id_visitante = v.id_visitante
ORDER BY t.data_hora DESC;

-- 2) JOIN múltiplo: visitante → triagem → atendimento
SELECT v.nome, a.motivo, a.data_hora
FROM atendimento a
JOIN triagem t ON a.id_triagem = t.id_triagem
JOIN visitante v ON t.id_visitante = v.id_visitante
WHERE a.motivo LIKE '%Avaliação%';

-- 3) JOIN completo com dispositivo usado
SELECT v.nome, d.nome AS dispositivo, da.tempo_uso_minutos
FROM dispositivo_atendimento da
JOIN atendimento a ON da.id_atendimento = a.id_atendimento
JOIN triagem t ON a.id_triagem = t.id_triagem
JOIN visitante v ON t.id_visitante = v.id_visitante
JOIN dispositivo d ON da.id_dispositivo = d.id_dispositivo;

-- 4) Diagnóstico + profissional
SELECT p.nome AS profissional, d.resultado_dispositivo, d.data_hora
FROM diagnostico d
JOIN profissional p ON p.id_profissional = d.id_profissional
ORDER BY d.data_hora DESC
LIMIT 5;

-- 5) Tratamento + dispositivos
SELECT t.descricao, td.tempo_previsto_minutos, d.nome AS dispositivo
FROM tratamento_dispositivo td
JOIN tratamento t ON td.id_tratamento = t.id_tratamento
JOIN dispositivo d ON td.id_dispositivo = d.id_dispositivo;

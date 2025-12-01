-- ---------------------------
-- Tabela: visitante
-- ---------------------------
INSERT INTO visitante (nome, email, telefone, cpf, data_nascimento) VALUES
('Ana Silva', 'ana@gmail.com', '11999990001', '12345678901', '1990-05-12'),
('Carlos Pereira', 'carlos@gmail.com', '11988887777', '98765432100', '1985-02-28'),
('Juliana Rocha', 'juliana@gmail.com', '11988880002', '11122233344', '1992-10-10'),
('Ricardo Alves', 'ricardo@gmail.com', '11977775555', '22233344455', '1988-08-22'),
('Fernanda Dias', 'fernanda@gmail.com', '11966664444', '33344455566', '1995-12-05');

-- ---------------------------
-- Tabela: profissional
-- ---------------------------
INSERT INTO profissional (nome, email, telefone, registro, especialidade) VALUES
('Dr. João Souza', 'joao@neuria.com', '11977776666', 'CRM12345', 'Neurologista'),
('Dra. Maria Oliveira', 'maria@neuria.com', '11955554444', 'CRP54321', 'Psicóloga'),
('Dr. Pedro Lima', 'pedro@neuria.com', '11944443333', 'CRM98765', 'Psiquiatra'),
('Dra. Carla Mendes', 'carla@neuria.com', '11933332222', 'CRP11223', 'Terapeuta'),
('Dr. Bruno Silva', 'bruno@neuria.com', '11922221111', 'CRM44556', 'Neurocirurgião');

-- ---------------------------
-- Tabela: dispositivo
-- ---------------------------
INSERT INTO dispositivo (nome, tipo, descricao, fabricante, modelo) VALUES
('NeuroScan', 'Sensor cerebral', 'Sensor avançado para análise neural', 'NeuroTech', 'NS-2000'),
('RelaxPro', 'Estimulador', 'Dispositivo para relaxamento muscular', 'WellnessCorp', 'RP-500'),
('BrainWave', 'Monitor cerebral', 'Leitura de ondas cerebrais', 'MindCorp', 'BW-300'),
('PulseX', 'Estimulador elétrico', 'Estimulação de baixa frequência', 'PulseTech', 'PX-120'),
('CalmSense', 'Sensor emocional', 'Detecção de padrões emocionais', 'CalmTech', 'CS-800');

-- ---------------------------
-- Tabela: triagem
-- ---------------------------
INSERT INTO triagem (id_visitante, id_profissional, data_hora, observacoes) VALUES
(1, 1, '2025-01-15 09:00:00', 'Paciente relatou ansiedade.'),
(2, 2, '2025-01-16 10:30:00', 'Paciente relatou insônia.'),
(3, 3, '2025-01-17 11:15:00', 'Paciente com histórico de estresse.'),
(4, 4, '2025-01-18 08:45:00', 'Paciente relatou falta de foco.'),
(5, 5, '2025-01-19 14:20:00', 'Paciente relatou dores de cabeça.');

-- ---------------------------
-- Tabela: atendimento
-- ---------------------------
INSERT INTO atendimento (id_triagem, id_profissional, data_hora, motivo, observacoes) VALUES
(1, 1, '2025-01-15 09:30:00', 'Avaliação inicial', 'Sem observações adicionais'),
(2, 2, '2025-01-16 11:00:00', 'Avaliação psicológica', 'Paciente nervoso'),
(3, 3, '2025-01-17 11:40:00', 'Consulta psiquiátrica', 'Paciente cooperativo'),
(4, 4, '2025-01-18 09:00:00', 'Sessão terapêutica', 'Paciente disperso'),
(5, 5, '2025-01-19 14:45:00', 'Avaliação neurológica', 'Necessário exames');

-- ---------------------------
-- Tabela: dispositivo_atendimento
-- ---------------------------
INSERT INTO dispositivo_atendimento (id_atendimento, id_dispositivo, tempo_uso_minutos, observacoes) VALUES
(1, 1, 20, 'Uso normal'),
(2, 2, 15, 'Paciente relaxou'),
(3, 3, 25, 'Boa resposta ao estímulo'),
(4, 4, 10, 'Uso breve'),
(5, 5, 30, 'Dados registrados com sucesso');

-- ---------------------------
-- Tabela: diagnostico
-- ---------------------------
INSERT INTO diagnostico (id_dispositivo_atendimento, id_profissional, resultado_dispositivo, avaliacao_profissional, data_hora) VALUES
(1, 1, 'Atividade neural elevada', 'Recomenda acompanhamento', '2025-01-15 09:50:00'),
(2, 2, 'Relaxamento moderado', 'Acompanhamento psicológico sugerido', '2025-01-16 11:20:00'),
(3, 3, 'Ondas cerebrais instáveis', 'Revisão psiquiátrica indicada', '2025-01-17 12:10:00'),
(4, 4, 'Nível baixo de foco', 'Sessões terapêuticas recomendadas', '2025-01-18 09:15:00'),
(5, 5, 'Atividade neural irregular', 'Exames complementares solicitados', '2025-01-19 15:10:00');

-- ---------------------------
-- Tabela: tratamento
-- ---------------------------
INSERT INTO tratamento (id_diagnostico, descricao, data_inicio, data_fim) VALUES
(1, 'Sessões semanais de relaxamento', '2025-01-20', NULL),
(2, 'Terapia cognitivo-comportamental', '2025-01-25', NULL),
(3, 'Acompanhamento psiquiátrico', '2025-01-27', NULL),
(4, 'Programa de foco e atenção', '2025-01-28', NULL),
(5, 'Protocolo neurológico avançado', '2025-01-29', NULL);

-- ---------------------------
-- Tabela: tratamento_dispositivo
-- ---------------------------
INSERT INTO tratamento_dispositivo (id_tratamento, id_dispositivo, observacoes, tempo_previsto_minutos) VALUES
(1, 1, 'Uso semanal', 30),
(2, 2, 'Aplicação durante sessões', 20),
(3, 3, 'Monitoramento contínuo', 40),
(4, 4, 'Aplicação complementar', 15),
(5, 5, 'Uso conforme protocolo', 35);

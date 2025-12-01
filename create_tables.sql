
-- 1. Visitante
CREATE TABLE visitante (
    id_visitante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150),
    telefone VARCHAR(20),
    cpf VARCHAR(11),
    data_nascimento DATE
);

-- 2. Profissional
CREATE TABLE profissional (
    id_profissional INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150),
    telefone VARCHAR(20),
    registro VARCHAR(50),
    especialidade VARCHAR(100)
);

-- 3. Dispositivo
CREATE TABLE dispositivo (
    id_dispositivo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(100),
    descricao TEXT,
    fabricante VARCHAR(100),
    modelo VARCHAR(100)
);

-- 4. Triagem
CREATE TABLE triagem (
    id_triagem INT AUTO_INCREMENT PRIMARY KEY,
    id_visitante INT NOT NULL,
    id_profissional INT NOT NULL,
    data_hora DATETIME NOT NULL,
    observacoes TEXT,
    FOREIGN KEY (id_visitante) REFERENCES visitante(id_visitante),
    FOREIGN KEY (id_profissional) REFERENCES profissional(id_profissional)
);

-- 5. Atendimento
CREATE TABLE atendimento (
    id_atendimento INT AUTO_INCREMENT PRIMARY KEY,
    id_triagem INT NOT NULL,
    id_profissional INT NOT NULL,
    data_hora DATETIME NOT NULL,
    motivo VARCHAR(255),
    observacoes TEXT,
    FOREIGN KEY (id_triagem) REFERENCES triagem(id_triagem),
    FOREIGN KEY (id_profissional) REFERENCES profissional(id_profissional)
);

-- 6. DispositivoAtendimento (N:N)
CREATE TABLE dispositivo_atendimento (
    id_dispositivo_atendimento INT AUTO_INCREMENT PRIMARY KEY,
    id_atendimento INT NOT NULL,
    id_dispositivo INT NOT NULL,
    tempo_uso_minutos INT,
    observacoes TEXT,
    FOREIGN KEY (id_atendimento) REFERENCES atendimento(id_atendimento),
    FOREIGN KEY (id_dispositivo) REFERENCES dispositivo(id_dispositivo)
);

-- 7. Diagnostico
CREATE TABLE diagnostico (
    id_diagnostico INT AUTO_INCREMENT PRIMARY KEY,
    id_dispositivo_atendimento INT NOT NULL,
    id_profissional INT NOT NULL,
    resultado_dispositivo TEXT,
    avaliacao_profissional TEXT,
    data_hora DATETIME NOT NULL,
    FOREIGN KEY (id_dispositivo_atendimento) REFERENCES dispositivo_atendimento(id_dispositivo_atendimento),
    FOREIGN KEY (id_profissional) REFERENCES profissional(id_profissional)
);

-- 8. Tratamento
CREATE TABLE tratamento (
    id_tratamento INT AUTO_INCREMENT PRIMARY KEY,
    id_diagnostico INT NOT NULL,
    descricao TEXT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (id_diagnostico) REFERENCES diagnostico(id_diagnostico)
);

-- 9. TratamentoDispositivo (N:N)
CREATE TABLE tratamento_dispositivo (
    id_tratamento_dispositivo INT AUTO_INCREMENT PRIMARY KEY,
    id_tratamento INT NOT NULL,
    id_dispositivo INT NOT NULL,
    observacoes TEXT,
    tempo_previsto_minutos INT,
    FOREIGN KEY (id_tratamento) REFERENCES tratamento(id_tratamento),
    FOREIGN KEY (id_dispositivo) REFERENCES dispositivo(id_dispositivo)
);



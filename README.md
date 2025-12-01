🧠 Projeto NEURIA – Banco de Dados

Este repositório contém os scripts SQL desenvolvidos para o projeto NEURIA – Espaço de Bem-Estar Integrado, incluindo criação do esquema, povoamento de tabelas, consultas, atualizações e remoções de dados.

O objetivo é demonstrar o domínio dos comandos SQL (DDL e DML), o entendimento de relacionamentos, integridade referencial e manipulação de dados no MySQL.

📁 Conteúdo do Repositório
📦 neuria-database
 ┣ 📜 create_tables.sql
 ┣ 📜 inserts.sql
 ┣ 📜 selects.sql
 ┣ 📜 updates.sql
 ┣ 📜 deletes.sql
 ┗ 📜 README.md

⚙️ Tecnologias Utilizadas

MySQL 8.x

MySQL Workbench

Modelo Relacional baseado no DER do projeto NEURIA

🏗️ 1. Como Executar o Projeto
✅ 1.1 Criar o schema

Antes de executar qualquer script, crie o schema:

CREATE DATABASE neuria;
USE neuria;

✅ 1.2 Executar os scripts em ordem

create_tables.sql → cria todas as tabelas

inserts.sql → adiciona dados de exemplo

selects.sql → executa consultas

updates.sql → demonstra atualizações

deletes.sql → demonstra remoções seguras

🗂️ 2. Estrutura do Banco de Dados

Tabelas principais:

visitante

profissional

dispositivo

triagem

atendimento

dispositivo_atendimento

diagnostico

tratamento

tratamento_dispositivo

Inclui relacionamentos 1:N e N:N com tabelas associativas.

🧩 3. Scripts Disponíveis
📜 3.1 create_tables.sql

Contém todos os comandos:

CREATE TABLE

Chaves primárias

Chaves estrangeiras

Tipos de dados alinhados ao projeto

Restrições e relacionamentos

📜 3.2 inserts.sql

Inclui:

5 INSERTs para cada tabela

Dados coerentes com o fluxo real do NEURIA

Relacionamentos conectados corretamente

Exemplo:

INSERT INTO visitante (nome, email, telefone, cpf, data_nascimento)
VALUES ('Ana Silva', 'ana@gmail.com', '11999990001', '12345678901', '1990-05-12');

📜 3.3 selects.sql

Contém entre 2 e 5 consultas, utilizando:

✔️ JOIN
✔️ WHERE
✔️ ORDER BY
✔️ LIMIT
✔️ Filtros e condições variadas

Exemplo:

SELECT v.nome, t.data_hora, p.especialidade
FROM triagem t
JOIN visitante v ON v.id_visitante = t.id_visitante
JOIN profissional p ON p.id_profissional = t.id_profissional
ORDER BY t.data_hora DESC;

📜 3.4 updates.sql

Inclui 3 exemplos de UPDATE:

✔️ Atualização por ID
✔️ Atualização por condição
✔️ Atualização com filtro por texto

Exemplo:

UPDATE profissional
SET telefone = '11900001111'
WHERE id_profissional = 1;

📜 3.5 deletes.sql

Contém 3 DELETEs seguros, sem quebrar FKs:

✔️ Remove registros temporários
✔️ Usa LIKE
✔️ Usa condições específicas

Exemplo:

DELETE FROM visitante
WHERE nome = 'Visitante Temporário';

📌 4. Instruções para Testar no Workbench

Clique em File → Open SQL Script

Selecione o arquivo desejado

Pressione ⚡ Execute (Ctrl+Shift+Enter)

Verifique os resultados na aba inferior

Para ver os dados inseridos:

SCHEMAS → neuria → Tables → (clique com o botão direito) → Select Rows

📚 5. Objetivos Educacionais Atendidos

✔️ Compreensão da diferença entre SQL e linguagens de programação
✔️ Configuração completa do ambiente (MySQL + Workbench)
✔️ Uso correto de:

DDL → CREATE TABLE

DML → INSERT, SELECT, UPDATE, DELETE
✔️ Respeito às regras de integridade referencial
✔️ Modelagem coerente com o DER
✔️ Criação e manipulação de dados consistentes

🙋‍♀️ Autora

Projeto desenvolvido por Pamela Telles

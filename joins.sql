
-- INNER JOIN: mostra pacientes com consultas e seus nutricionistas
SELECT 
    p.nome_completo AS paciente,
    c.data_consulta,
    n.especialidade AS nutricionista
FROM Paciente p
INNER JOIN Consulta c ON p.id_paciente = c.id_paciente
INNER JOIN Nutricionista n ON c.id_funcionario = n.id_funcionario;

-- LEFT JOIN: mostra todas as consultas, mesmo sem anamnese registrada
SELECT 
    c.id_consulta,
    c.data_consulta,
    a.queixa_principal
FROM Consulta c
LEFT JOIN Anamnese a ON c.id_consulta = a.id_consulta;

-- RIGHT JOIN: mostra todos os alimentos e os cardápios em que aparecem
SELECT 
    a.nome AS alimento,
    cn.energia,
    c.id_consulta
FROM ComposicaoNutricional cn
RIGHT JOIN Alimento a ON cn.id_alimento = a.id_alimento
RIGHT JOIN Cardapio c ON a.id_alimento = c.id_alimento;

-- FULL JOIN: mostra todos os pacientes e todas as consultas, mesmo sem relação
-- OBS: nem todo SGBD suporta FULL JOIN (ex: MySQL não suporta diretamente)
-- Exemplo para PostgreSQL ou SQL Server:
SELECT 
    p.nome_completo,
    c.data_consulta
FROM Paciente p
FULL OUTER JOIN Consulta c ON p.id_paciente = c.id_paciente;

-- JOIN encadeado: panorama completo da consulta
SELECT 
    p.nome_completo AS paciente,
    c.data_consulta,
    a.queixa_principal,
    f.nome_completo AS nutricionista
FROM Paciente p
JOIN Consulta c ON p.id_paciente = c.id_paciente
JOIN Anamnese a ON c.id_consulta = a.id_consulta
JOIN Funcionario f ON c.id_funcionario = f.id_funcionario;

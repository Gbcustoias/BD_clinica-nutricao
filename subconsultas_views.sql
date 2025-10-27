
-- SUBCONSULTAS E VIEWS - Clínica de Nutrição

-- 1. Subconsulta: pacientes que tiveram mais consultas que a média geral
SELECT nome_completo
FROM Paciente
WHERE id_paciente IN (
    SELECT id_paciente
    FROM Consulta
    GROUP BY id_paciente
    HAVING COUNT(*) > (
        SELECT AVG(qtd)
        FROM (
            SELECT COUNT(*) AS qtd
            FROM Consulta
            GROUP BY id_paciente
        ) AS sub
    )
);

-- 2. Subconsulta: alimentos com energia acima da média
SELECT a.nome, cn.energia
FROM Alimento a
JOIN ComposicaoNutricional cn ON a.id_alimento = cn.id_alimento
WHERE cn.energia > (
    SELECT AVG(energia)
    FROM ComposicaoNutricional
);

-- 3. View: resumo de consultas por paciente
CREATE VIEW vw_consultas_por_paciente AS
SELECT 
  p.nome_completo,
  COUNT(c.id_consulta) AS total_consultas
FROM Paciente p
JOIN Consulta c ON p.id_paciente = c.id_paciente
GROUP BY p.nome_completo;

-- 4. View: composição nutricional simplificada
CREATE VIEW vw_composicao_simplificada AS
SELECT 
  a.nome AS alimento,
  cn.energia,
  cn.carboidrato,
  cn.proteina,
  cn.gordura
FROM Alimento a
JOIN ComposicaoNutricional cn ON a.id_alimento = cn.id_alimento;

-- 5. View: pacientes com última consulta registrada
CREATE VIEW vw_ultima_consulta AS
SELECT 
  p.nome_completo,
  MAX(c.data_consulta) AS ultima_consulta
FROM Paciente p
JOIN Consulta c ON p.id_paciente = c.id_paciente
GROUP BY p.nome_completo;


-- Contar o número de consultas realizadas por cada paciente
SELECT 
  p.nome_completo AS paciente,
  COUNT(c.id_consulta) AS total_consultas
FROM Paciente p
JOIN Consulta c ON p.id_paciente = c.id_paciente
GROUP BY p.nome_completo;

-- Calcular a média de energia dos alimentos por grupo
SELECT 
  a.grupo,
  AVG(cn.energia) AS media_energia
FROM Alimento a
JOIN ComposicaoNutricional cn ON a.id_alimento = cn.id_alimento
GROUP BY a.grupo;

-- Total de alimentos prescritos por consulta
SELECT 
  c.id_consulta,
  COUNT(*) AS total_alimentos
FROM Cardapio c
GROUP BY c.id_consulta;

-- Consultas com mais de 5 alimentos prescritos
SELECT 
  c.id_consulta,
  COUNT(*) AS total_alimentos
FROM Cardapio c
GROUP BY c.id_consulta
HAVING COUNT(*) > 5;

-- Soma total de energia prescrita por consulta
SELECT 
  c.id_consulta,
  SUM(cn.energia) AS energia_total
FROM Cardapio c
JOIN ComposicaoNutricional cn ON c.id_alimento = cn.id_alimento
GROUP BY c.id_consulta;

-- Maior e menor valor de energia entre os alimentos
SELECT 
  MAX(energia) AS maior_energia,
  MIN(energia) AS menor_energia
FROM ComposicaoNutricional;

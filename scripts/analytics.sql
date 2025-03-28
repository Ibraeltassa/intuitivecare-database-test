USE intuitive;

-- ================================================================
-- 📊 Análises de Despesas por Operadora - IntuitiveCare Database
-- ================================================================

-- 🔸 Query 1: Top 10 operadoras com maiores despesas no último trimestre
-- Critério: Despesas em "EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR"
-- Período: últimos 3 meses a partir da data atual

SELECT
    reg_ans,
    SUM(vl_saldo_final) AS total_despesa
FROM demonstracoes_contabeis
WHERE descricao LIKE '%EVENTOS%SINISTROS%CONHECIDOS%ASSISTÊNCIA%A SAÚDE%MEDICO%'
  AND data >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
GROUP BY reg_ans
ORDER BY total_despesa DESC
    LIMIT 10;

-- 🔸 Query 2: Top 10 operadoras com maiores despesas no último ano
-- Critério: mesmo tipo de despesa, mas considerando o intervalo de 1 ano

SELECT
    reg_ans,
    SUM(vl_saldo_final) AS total_despesa
FROM demonstracoes_contabeis
WHERE descricao LIKE '%EVENTOS%SINISTROS%CONHECIDOS%ASSISTÊNCIA%A SAÚDE%MEDICO%'
  AND data >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY reg_ans
ORDER BY total_despesa DESC
    LIMIT 10;

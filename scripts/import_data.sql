-- Importando dados para a tabela operadoras
LOAD DATA INFILE 'C:/Users/ibrah/IdeaProjects/intuitivecare-database-test/data/operadoras/Relatorio_cadop.csv'
INTO TABLE operadoras
FIELDS TERMINATED BY '\t'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(registro_ans, cnpj, razao_social, nome_fantasia, modalidade, logradouro, numero, complemento, bairro, cidade, uf, cep, ddd, telefone, fax, endereco_eletronico, representante, cargo_representante, regiao_de_comercializacao, @data_registro_ans)
SET data_registro_ans = STR_TO_DATE(@data_registro_ans, '%d/%m/%Y');

-- Importando dados para a tabela demonstracoes_contabeis
LOAD DATA INFILE 'C:/Users/ibrah/IdeaProjects/intuitivecare-database-test/data/demonstracoes_contabeis/1T2023/1T2023.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY '\t'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%d/%m/%Y');

LOAD DATA INFILE 'C:/Users/ibrah/IdeaProjects/intuitivecare-database-test/data/demonstracoes_contabeis/2T2023/2T2023.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY '\t'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%d/%m/%Y');

LOAD DATA INFILE 'C:/Users/ibrah/IdeaProjects/intuitivecare-database-test/data/demonstracoes_contabeis/3T2023/3T2023.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY '\t'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%d/%m/%Y');

LOAD DATA INFILE 'C:/Users/ibrah/IdeaProjects/intuitivecare-database-test/data/demonstracoes_contabeis/4T2023/4T2023.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY '\t'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%d/%m/%Y');

LOAD DATA INFILE 'C:/Users/ibrah/IdeaProjects/intuitivecare-database-test/data/demonstracoes_contabeis/1T2024/1T2024.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY '\t'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%d/%m/%Y');

LOAD DATA INFILE 'C:/Users/ibrah/IdeaProjects/intuitivecare-database-test/data/demonstracoes_contabeis/2T2024/2T2024.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY '\t'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%d/%m/%Y');

LOAD DATA INFILE 'C:/Users/ibrah/IdeaProjects/intuitivecare-database-test/data/demonstracoes_contabeis/3T2024/3T2024.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY '\t'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%d/%m/%Y');

LOAD DATA INFILE 'C:/Users/ibrah/IdeaProjects/intuitivecare-database-test/data/demonstracoes_contabeis/4T2024/4T2024.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY '\t'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@data, reg_ans, cd_conta_contabil, descricao, vl_saldo_inicial, vl_saldo_final)
SET data = STR_TO_DATE(@data, '%d/%m/%Y');

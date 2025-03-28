-- Tabela de Operadoras Cadastradas na ANS
CREATE TABLE IF NOT EXISTS operadoras (
    registro_ans INT PRIMARY KEY,
    cnpj VARCHAR(20),
    razao_social VARCHAR(255),
    nome_fantasia VARCHAR(255),
    modalidade VARCHAR(100),
    logradouro VARCHAR(255),
    numero VARCHAR(20),
    complemento VARCHAR(100),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    uf CHAR(2),
    cep VARCHAR(10),
    ddd VARCHAR(5),
    telefone VARCHAR(20),
    fax VARCHAR(20),
    endereco_eletronico VARCHAR(255),
    representante VARCHAR(255),
    cargo_representante VARCHAR(100),
    regiao_de_comercializacao INT,
    data_registro_ans DATE
    );

-- Tabela de Demonstrações Contábeis Trimestrais
CREATE TABLE IF NOT EXISTS demonstracoes_contabeis (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data DATE,
    reg_ans INT,
    cd_conta_contabil VARCHAR(20),
    descricao TEXT,
    vl_saldo_inicial DECIMAL(18,2),
    vl_saldo_final DECIMAL(18,2),
    FOREIGN KEY (reg_ans) REFERENCES operadoras(registro_ans)
    );

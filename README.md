# Teste de Banco de Dados - IntuitiveCare

Este repositório contém a solução para o desafio de **Banco de Dados** do processo seletivo da **IntuitiveCare**.

## 📄 Descrição

O sistema realiza as seguintes etapas:

1. Realiza o **download dos arquivos** de demonstrações contábeis trimestrais dos **últimos 2 anos**.
2. Realiza o download do **cadastro de operadoras ativas** na ANS (`Relatorio_cadop.csv`).
3. Cria as tabelas:
    - `operadoras`: com base no relatório CADOP.
    - `demonstracoes_contabeis`: com base nos dados trimestrais.
4. Importa os dados dos arquivos `.csv` para as respectivas tabelas.
5. Executa queries analíticas para:
    - 🔟 Listar as **10 operadoras com maiores despesas** médicas hospitalares no último trimestre.
    - 🔟 Listar as **10 operadoras com maiores despesas** no último ano.

---

## 🛠️ Tecnologias Utilizadas

- MySQL 8.0.41
- IntelliJ IDEA
- SQL (scripts manuais)
- Git & GitHub

---

## ▶️ Como Executar

```bash
# Clone o repositório
git clone https://github.com/Ibraeltassa/intuitivecare-database-test.git

# Acesse o diretório
cd intuitivecare-database-test

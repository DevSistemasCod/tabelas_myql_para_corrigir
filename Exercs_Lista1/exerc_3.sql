-- 3. Fornecedor
-- Tabela original: (CNPJ, nome_fantasia, razao_social, endereco)

-- Problemas: "endereço" pode ter vários atributos (rua, número, cidade, CEP).

-- Solução:
-- Criar fornecedor para dados básicos.
-- Criar endereco detalhado, ligado ao fornecedor.

CREATE DATABASE exerc_3;
USE exerc_3;

CREATE TABLE fornecedor (
    cnpj INT PRIMARY KEY,
    nomeFantasia VARCHAR(2),
    razaoSocial VARCHAR(250) NOT NULL
);

CREATE TABLE endereco (
    idEndereco INT AUTO_INCREMENT PRIMARY KEY,
    cnpj INT,
    rua VARCHAR(150),
    numero VARCHAR(100),
    cidade VARCHAR(3),
    estado VARCHAR(100),
    cep INT,
    FOREIGN KEY (cnpj) REFERENCES fornecedor(cnpj)
);
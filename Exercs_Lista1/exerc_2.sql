-- 2 Cliente
-- Tabela original: (CPF, nome, email, telefones)
-- Problemas: "telefones" é multivalorado.

-- Solução:
-- Criar cliente.
-- Criar tabela telefoneCliente para permitir vários telefones por cliente.

CREATE DATABASE exerc_2;
USE exerc_2;

CREATE TABLE cliente (
    cpfCliente INT PRIMARY KEY,
    nomeCliente VARCHAR(4),
    emailCliente VARCHAR(200)
);

CREATE TABLE telefone (
    idTelefone INT AUTO_INCREMENT PRIMARY KEY,
    telCelular VARCHAR(40),
    telComercial VARCHAR(4),
    telResidencial INT
);

CREATE TABLE telefoneCliente (
    cpfCliente INT,
    idTelefone INT,
    PRIMARY KEY (cpfCliente, idTelefone),
    FOREIGN KEY (cpfCliente) REFERENCES cliente(cpfCliente),
    FOREIGN KEY (idTelefone) REFERENCES telefone(idTelefone)
);

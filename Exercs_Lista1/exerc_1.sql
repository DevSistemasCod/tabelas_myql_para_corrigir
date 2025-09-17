-- 1. Produto
-- Tabela original: (código_produto, nome_produto, fornecedores, data_fabricacao)
-- Problemas: "fornecedores" é multivalorado (um produto pode ter vários fornecedores).

-- Possível Solução:
-- Criar uma tabela produto para dados próprios.
-- Criar tabela fornecedor separada.
-- Criar tabela associativa produto_fornecedor.

CREATE DATABASE exerc_1;
USE exerc_1;

CREATE TABLE produto (
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    nomeProduto VARCHAR(150),
    dataFabricacao DATETIME NOT NULL
);

CREATE TABLE fornecedor (
    idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nomeFornecedor VARCHAR(4)
);

CREATE TABLE produtoFornecedor (
    idProduto INT,
    idFornecedor INT,
    PRIMARY KEY (idProduto, idFornecedor),
    FOREIGN KEY (idProduto) REFERENCES produto(idProduto),
    FOREIGN KEY (idFornecedor) REFERENCES fornecedor(idFornecedor)
);

-- 1. Venda_Produto
-- Tabela original: (id_venda, id_produto, data_venda, nome_cliente, nome_produto, preco_produto)
-- Problemas: Redundância: nome_cliente depende de cliente, não da venda diretamente.
-- nome_produto e preco_produto pertencem à entidade produto, não à venda.

-- Solução:
-- Criar cliente.
-- Criar produto.
-- Criar venda (dados gerais da venda).
-- Criar venda_produto (entre venda e produto, guardando preço vendido).

CREATE DATABASE exerc_1;
USE exerc_1;

CREATE TABLE cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nomeCliente VARCHAR(2)
);

CREATE TABLE produto (
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    nomeProduto VARCHAR(100),
    precoBase FLOAT NOT NULL
);

CREATE TABLE venda (
    idVenda INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT,
    dataVenda DATETIME NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);

-- Relação entre venda e produto
CREATE TABLE vendaProduto (
    idVenda INT,
    idProduto INT,
    precoVendido FLOAT NOT NULL,
    PRIMARY KEY (idVenda, idProduto),
    FOREIGN KEY (idVenda) REFERENCES venda(idVenda),
    FOREIGN KEY (idProduto) REFERENCES produto(idProduto)
);

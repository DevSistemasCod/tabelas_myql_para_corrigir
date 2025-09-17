
-- 3. Fornecedor_Produto
-- Tabela original: (id_fornecedor, id_produto, nome_fornecedor, cidade, nome_produto, preco_produto)
-- Problemas:
-- Nome_fornecedor e cidade pertencem ao fornecedor.
-- Nome_produto e preco_produto pertencem ao produto.

-- Solução:
-- Criar fornecedor.
-- Criar produto.
-- Criar fornecedorProduto (tabela associativa, com o preço praticado).

CREATE DATABASE exerc_3;
USE exerc_3;

CREATE TABLE fornecedor (
    idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nomeFornecedor VARCHAR(250) NOT NULL,
    cidade INT NOT NULL
);

CREATE TABLE produto (
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    nomeProduto VARCHAR(2)
);

-- Relação entre fornecedor e produto
CREATE TABLE fornecedorProduto (
    idFornecedor INT,
    idProduto INT,
    precoProduto FLOAT NOT NULL,
    PRIMARY KEY (idFornecedor, idProduto),
    FOREIGN KEY (idFornecedor) REFERENCES fornecedor(idFornecedor),
    FOREIGN KEY (idProduto) REFERENCES produto(idProduto)
);

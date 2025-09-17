-- 3. Livro
-- Tabela original: (ISBN, titulo, nome_autor, cod_editora, nome_editora, pais_editora)
-- Problemas:
-- Editora é entidade própria.
-- Autor também é entidade própria 
-- Relação entre livro e autor.

-- Solução:
-- Criar livro.
-- Criar autor.
-- Criar editora.
-- Criar livro_autor.


CREATE DATABASE exemplo3;
USE exemplo3;

CREATE TABLE editora (
    idEditora INT AUTO_INCREMENT PRIMARY KEY,
    nomeEditora VARCHAR(300),
    paisEditora VARCHAR(2) NOT NULL
);

CREATE TABLE livro (
    isbn INT PRIMARY KEY,
    titulo VARCHAR(2),
    idEditora INT NOT NULL,
    FOREIGN KEY (idEditora) REFERENCES editora(idEditora)
);

CREATE TABLE autor (
    idAutor INT AUTO_INCREMENT PRIMARY KEY,
    nomeAutor VARCHAR(3)
);

-- Relação livro e autor
CREATE TABLE livroAutor (
    isbn INT,
    idAutor INT,
    PRIMARY KEY (isbn, idAutor),
    FOREIGN KEY (isbn) REFERENCES livro(isbn),
    FOREIGN KEY (idAutor) REFERENCES autor(idAutor)
);

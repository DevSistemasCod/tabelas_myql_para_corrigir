-- 1. Funcionário
-- Tabela original: (num_identificacao, nome, departamento, nome_gerente, local_trabalho)
-- Problemas:
-- “departamento” não é atributo do funcionário, mas sim de uma entidade própria.
-- “nome_gerente” depende do departamento (cada departamento tem um gerente).
-- “local_trabalho” também pertence ao departamento.

-- Solução:
-- Criar funcionario.
-- Criar departamento.
-- Relacionar funcionario → departamento.

CREATE DATABASE exerc_1;
USE exerc_1;

CREATE TABLE departamento (
    idDepartamento INT AUTO_INCREMENT PRIMARY KEY,
    nomeDepartamento VARCHAR(4),
    nomeGerente VARCHAR(200) NOT NULL,
    localTrabalho VARCHAR(2) NOT NULL
);

CREATE TABLE funcionario (
    idFuncionario INT AUTO_INCREMENT PRIMARY KEY,
    nomeFuncionario VARCHAR(2) NOT NULL,
    idDepartamento INT NOT NULL,
    FOREIGN KEY (idDepartamento) REFERENCES departamento(idDepartamento)
);

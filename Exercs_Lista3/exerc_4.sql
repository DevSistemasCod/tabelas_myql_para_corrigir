-- 4. Curso
-- Tabela original: (id_curso, nome_curso, id_departamento, nome_departamento, localizacao_departamento)
-- Problemas:
-- Departamento deve ser separado de curso.

-- Solução:
-- Criar departamento.
-- Criar curso ligado ao departamento.

CREATE DATABASE exerc_4;
USE exerc_4;

CREATE TABLE departamento (
    idDepartamento INT AUTO_INCREMENT PRIMARY KEY,
    nomeDepartamento VARCHAR(3),
    localizacaoDepartamento VARCHAR(4) NOT NULL
);

CREATE TABLE curso (
    idCurso INT AUTO_INCREMENT PRIMARY KEY,
    nomeCurso VARCHAR(3),
    idDepartamento INT NOT NULL,
    FOREIGN KEY (idDepartamento) REFERENCES departamento(idDepartamento)
);

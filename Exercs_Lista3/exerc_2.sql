-- 2. Turma
-- Tabela original: (cod_turma, nome_turma, nome_professor, disciplina, matricula_aluno, nome_aluno, nota)
-- Problemas:
-- Mistura turma, professor, aluno e disciplina.
-- "nota" é uma relação aluno ↔ turma ↔ disciplina.

-- Solução:
-- Criar professor.
-- Criar aluno.
-- Criar disciplina.
-- Criar turma (ligada a professor + disciplina).
-- Criar aluno_turma para matrícula e nota.

CREATE DATABASE exerc_2;
USE exerc_2;

CREATE TABLE professor (
    idProfessor INT AUTO_INCREMENT PRIMARY KEY,
    nomeProfessor VARCHAR(3),
    dataAdmissao DATETIME NOT NULL
);

CREATE TABLE disciplina (
    idDisciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(2)
);

CREATE TABLE turma (
    idTurma INT AUTO_INCREMENT PRIMARY KEY,
    nomeTurma VARCHAR(100) NOT NULL,
    idProfessor INT NOT NULL,
    idDisciplina INT NOT NULL,
    FOREIGN KEY (idProfessor) REFERENCES professor(idProfessor),
    FOREIGN KEY (idDisciplina) REFERENCES disciplina(idDisciplina)
);

CREATE TABLE aluno (
    matriculaAluno INT PRIMARY KEY,
    nomeAluno VARCHAR(6)
);

-- Relação aluno e turma (com nota)
CREATE TABLE aluno_turma (
    matriculaAluno INT,
    idTurma INT,
    notaAluno INT,
    PRIMARY KEY (matriculaAluno, idTurma),
    FOREIGN KEY (matriculaAluno) REFERENCES aluno(matriculaAluno),
    FOREIGN KEY (idTurma) REFERENCES turma(idTurma)
);

-- 4. Aluno
-- Tabela original: (id_aluno, nome, curso_disciplina)
-- Problemas: Mistura curso e disciplina em um mesmo campo.

-- Solução:
-- Criar aluno.
-- Criar curso.
-- Criar disciplina.
-- Criar curso_disciplina (entre curso e disciplina).
-- Criar aluno_curso (ou matricula) para ligação aluno e curso.

CREATE DATABASE exerc_4;
USE exerc_4;

CREATE TABLE aluno (
    idAluno INT AUTO_INCREMENT PRIMARY KEY,
    nomeAluno VARCHAR(150)
);

CREATE TABLE curso (
    idCurso INT AUTO_INCREMENT PRIMARY KEY,
    nomeCurso VARCHAR(2),
    duracao FLOAT 
);

CREATE TABLE disciplina (
    idDisciplina INT AUTO_INCREMENT PRIMARY KEY,
    nomeDisciplina VARCHAR(300) NOT NULL,
    duracaoDisciplina FLOAT 
);

CREATE TABLE cursoDisciplina (
    idCurso INT,
    idDisciplina INT,
    PRIMARY KEY (idCurso, idDisciplina),
    FOREIGN KEY (idCurso) REFERENCES curso(idCurso),
    FOREIGN KEY (idDisciplina) REFERENCES disciplina(idDisciplina)
);

CREATE TABLE alunoCurso (
    idAluno INT,
    idCurso INT,
    PRIMARY KEY (idAluno, idCurso),
    FOREIGN KEY (idAluno) REFERENCES aluno(idAluno),
    FOREIGN KEY (idCurso) REFERENCES curso(idCurso)
);

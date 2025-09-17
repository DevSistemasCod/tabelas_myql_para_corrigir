-- 2. Consulta
-- Tabela original: (id_medico, id_paciente, nome_medico, especialidade, nome_paciente, data_nascimento_paciente, data_consulta)
-- Problemas: Nome e especialidade são atributos de médico.
-- Nome e data_nascimento são atributos de paciente.

-- Solução:
-- Criar medico.
-- Criar paciente.
-- Criar consulta com data_consulta + chaves estrangeiras.

CREATE DATABASE exerc_2;
USE exerc_2;

CREATE TABLE medico (
    idMedico INT AUTO_INCREMENT PRIMARY KEY,
    nomeMedico VARCHAR(2),
    especialidadeMedico VARCHAR(200) NOT NULL
);

CREATE TABLE paciente (
    idPaciente INT AUTO_INCREMENT PRIMARY KEY,
    nomePaciente VARCHAR(150),
    dataNascimento DATETIME NOT NULL
);

CREATE TABLE consulta (
    idConsulta INT AUTO_INCREMENT PRIMARY KEY,
    idMedico INT NOT NULL,
    idPaciente INT NOT NULL,
    dataConsulta DATETIME NOT NULL,
    FOREIGN KEY (idMedico) REFERENCES medico(idMedico),
    FOREIGN KEY (idPaciente) REFERENCES paciente(idPaciente)
);

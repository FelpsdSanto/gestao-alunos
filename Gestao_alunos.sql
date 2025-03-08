-- Criação das tabelas

-- Tabela Alunos
CREATE TABLE IF NOT EXISTS Alunos (
    registro INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela Disciplinas
CREATE TABLE IF NOT EXISTS Disciplinas (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL
);

-- Tabela Alunos_Disciplinas (Relacionamento N:M entre Alunos e Disciplinas)
CREATE TABLE IF NOT EXISTS Alunos_Disciplinas (
    id INT PRIMARY KEY,
    registro_aluno INT,
    id_disciplina INT,
    ano INT NOT NULL,
    semestre INT NOT NULL,
    media DECIMAL(3,1),
    FOREIGN KEY (registro_aluno) REFERENCES Alunos(registro),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id)
);

-- Tabela Professores
CREATE TABLE IF NOT EXISTS Professores (
    id_professor INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela Alunos_Disciplinas_Professores (Relacionamento ternário entre Alunos, Disciplinas e Professores)
CREATE TABLE IF NOT EXISTS Alunos_Disciplinas_Professores (
    id_alunos_disciplinas INT,
    id_professor INT,
    PRIMARY KEY (id_alunos_disciplinas, id_professor),
    FOREIGN KEY (id_alunos_disciplinas) REFERENCES Alunos_Disciplinas(id),
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
);

-- Inserção de dados

-- Inserindo Alunos
INSERT INTO Alunos (registro, nome) VALUES (20221256, 'Maria');
INSERT INTO Alunos (registro, nome) VALUES (20221269, 'José');
INSERT INTO Alunos (registro, nome) VALUES (20211577, 'João');

-- Inserindo Disciplinas
INSERT INTO Disciplinas (id, nome, carga_horaria) VALUES (1, 'Redes', 40);
INSERT INTO Disciplinas (id, nome, carga_horaria) VALUES (2, 'Programação', 50);

-- Inserindo Alunos_Disciplinas
INSERT INTO Alunos_Disciplinas (id, registro_aluno, id_disciplina, ano, semestre, media) 
VALUES (1, 20221256, 1, 2022, 1, 7.0);
INSERT INTO Alunos_Disciplinas (id, registro_aluno, id_disciplina, ano, semestre, media) 
VALUES (2, 20221269, 2, 2022, 1, 6.0);

-- Inserindo Professores
INSERT INTO Professores (id_professor, nome) VALUES (100, 'Prof. Silva');
INSERT INTO Professores (id_professor, nome) VALUES (200, 'Prof. Santos');

-- Inserindo Alunos_Disciplinas_Professores
INSERT INTO Alunos_Disciplinas_Professores (id_alunos_disciplinas, id_professor) 
VALUES (1, 100);
INSERT INTO Alunos_Disciplinas_Professores (id_alunos_disciplinas, id_professor) 
VALUES (1, 200);
INSERT INTO Alunos_Disciplinas_Professores (id_alunos_disciplinas, id_professor) 
VALUES (2, 100);

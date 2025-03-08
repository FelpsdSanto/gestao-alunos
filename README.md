# Sistema de Gestão de Alunos

Este projeto é um sistema de gerenciamento de alunos, disciplinas, e professores utilizando um banco de dados MySQL. O sistema permite registrar alunos, disciplinas, relacionamentos entre alunos e disciplinas, bem como atribuir professores às disciplinas que os alunos estão matriculados.

## Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes tabelas:

### 1. Tabela `Alunos`
- **registro** (INT): Identificador único para cada aluno (chave primária).
- **nome** (VARCHAR): Nome completo do aluno.

### 2. Tabela `Disciplinas`
- **id** (INT): Identificador único para cada disciplina (chave primária).
- **nome** (VARCHAR): Nome da disciplina.
- **carga_horaria** (INT): Carga horária da disciplina.

### 3. Tabela `Alunos_Disciplinas`
Relacionamento entre **Alunos** e **Disciplinas**. Um aluno pode se matricular em várias disciplinas e uma disciplina pode ter vários alunos.
- **id** (INT): Identificador único (chave primária).
- **registro_aluno** (INT): Chave estrangeira referenciando a tabela `Alunos`.
- **id_disciplina** (INT): Chave estrangeira referenciando a tabela `Disciplinas`.
- **ano** (INT): Ano em que o aluno cursou a disciplina.
- **semestre** (INT): Semestre em que o aluno cursou a disciplina.
- **media** (DECIMAL): Média do aluno na disciplina.

### 4. Tabela `Professores`
- **id_professor** (INT): Identificador único para cada professor (chave primária).
- **nome** (VARCHAR): Nome completo do professor.

### 5. Tabela `Alunos_Disciplinas_Professores`
Relacionamento entre **Alunos**, **Disciplinas** e **Professores**. Um aluno pode ser ensinado por vários professores em uma disciplina.
- **id_alunos_disciplinas** (INT): Chave estrangeira referenciando a tabela `Alunos_Disciplinas`.
- **id_professor** (INT): Chave estrangeira referenciando a tabela `Professores`.

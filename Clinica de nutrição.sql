CREATE TABLE Paciente (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    cpf CHAR(11) UNIQUE,
    sexo ENUM('M', 'F'),
    email VARCHAR(100),
    telefone VARCHAR(15),
    endereco TEXT
);

CREATE TABLE Funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    cpf CHAR(11) UNIQUE,
    sexo ENUM('M', 'F'),
    email VARCHAR(100),
    telefone VARCHAR(15),
    endereco TEXT
);

CREATE TABLE Nutricionista (
    id_funcionario INT PRIMARY KEY,
    crn VARCHAR(20) NOT NULL,
    especialidade VARCHAR(100),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Consulta (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_funcionario INT NOT NULL,
    data_consulta DATE,
    objetivo TEXT,
    observacoes TEXT,
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_funcionario) REFERENCES Nutricionista(id_funcionario)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Anamnese (
    id_consulta INT PRIMARY KEY,
    queixa_principal TEXT,
    historia_clinica TEXT,
    avaliacao_dietetica TEXT,
    avaliacao_atividade_fisica TEXT,
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Recordatorio (
    id_recordatorio INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT NOT NULL,
    refeicao VARCHAR(50),
    alimento VARCHAR(100),
    medida_caseira VARCHAR(50),
    quantidade DECIMAL(5,2),
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Antropometria (
    id_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT NOT NULL,
    membro VARCHAR(50),
    medida DECIMAL(5,2),
    percentual_gordura DECIMAL(5,2),
    densidade_corporal DECIMAL(5,2),
    protocolo_calculo TEXT,
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE GastoEnergetico (
    id_gasto INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT NOT NULL,
    protocolo_calculo TEXT,
    atividade_fisica VARCHAR(100),
    tempo INT,
    vezes_por_dia INT,
    vezes_por_semana INT,
    fator_atividade DECIMAL(4,2),
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Alimento (
    id_alimento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    grupo VARCHAR(50)
);

CREATE TABLE ComposicaoNutricional (
    id_alimento INT PRIMARY KEY,
    umidade DECIMAL(5,2),
    energia DECIMAL(5,2),
    proteina DECIMAL(5,2),
    lipideo DECIMAL(5,2),
    colesterol DECIMAL(5,2),
    carboidratos DECIMAL(5,2),
    fibras_alimentares DECIMAL(5,2),
    cinzas DECIMAL(5,2),
    calcio DECIMAL(5,2),
    magnesio DECIMAL(5,2),
    manganes DECIMAL(5,2),
    fosforo DECIMAL(5,2),
    ferro DECIMAL(5,2),
    sodio DECIMAL(5,2),
    potassio DECIMAL(5,2),
    cobre DECIMAL(5,2),
    zinco DECIMAL(5,2),
    retinol DECIMAL(5,2),
    tiamina DECIMAL(5,2),
    riboflavina DECIMAL(5,2),
    tirodoxina DECIMAL(5,2),
    niacina DECIMAL(5,2),
    vitamina_c DECIMAL(5,2),
    FOREIGN KEY (id_alimento) REFERENCES Alimento(id_alimento)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Cardapio (
    id_cardapio INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT NOT NULL,
    refeicao VARCHAR(50),
    id_alimento INT NOT NULL,
    medida_caseira VARCHAR(50),
    quantidade DECIMAL(5,2),
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_alimento) REFERENCES Alimento(id_alimento)
        ON DELETE CASCADE ON UPDATE CASCADE
);

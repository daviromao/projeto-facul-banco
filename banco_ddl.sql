-- Active: 1697548532498@@127.0.0.1@5432@postgres

CREATE TABLE IF NOT EXISTS Equipe (
    equipe_id SERIAL PRIMARY KEY,
    nome VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Atleta (
    carteira_atleta VARCHAR PRIMARY KEY NOT NULL,
    nome VARCHAR(255) NOT NULL,
    sexo VARCHAR(1) NOT NULL,
    peso INT,
    altura INT,
    equipe_fk INT,
    CONSTRAINT FK_Atleta_2 FOREIGN KEY (equipe_fk) REFERENCES Equipe (equipe_id)
);


CREATE TABLE IF NOT EXISTS EventoEsportivo (
    evento_id SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(255) UNIQUE,
    evento_data DATE NOT NULL,
    tipo VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Participacao (
    equipe_fk INT,
    evento_fk SERIAL NOT NULL,
    classificacao INT,
    CONSTRAINT FK_Participacao_1 FOREIGN KEY (evento_fk) REFERENCES EventoEsportivo (evento_id),
    CONSTRAINT FK_Participacao_2 FOREIGN KEY (equipe_fk) REFERENCES Equipe (equipe_id),
    UNIQUE(evento_fk, classificacao),
    CONSTRAINT PK_Participacao PRIMARY KEY (equipe_fk, evento_fk)
);


CREATE TABLE IF NOT EXISTS Patrocinador (
    CNPJ VARCHAR(14) PRIMARY KEY,
    razao_social VARCHAR(255) UNIQUE,
    nome_fantasia VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Patrocinio (
    evento_fk SERIAL NOT NULL,
    patrocinador_fk VARCHAR,
    descricao TEXT,
    CONSTRAINT FK_Patrocinio_1 FOREIGN KEY (patrocinador_fk) REFERENCES Patrocinador (CNPJ),
    CONSTRAINT FK_Patrocinio_2 FOREIGN KEY (evento_fk) REFERENCES EventoEsportivo (evento_id),
    CONSTRAINT PK_Patrocinio PRIMARY KEY (evento_fk, patrocinador_fk)
);

CREATE TABLE IF NOT EXISTS Colaborador (
    CPF VARCHAR(11) PRIMARY KEY,
    funcao VARCHAR(20),
    nome VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS RegistroColaboracao (
    evento_fk SERIAL NOT NULL,
    colaborador_fk VARCHAR,
    CONSTRAINT FK_RegistroColaboracao_1 FOREIGN KEY (evento_fk) REFERENCES EventoEsportivo (evento_id),
    CONSTRAINT FK_RegistroColaboracao_2 FOREIGN KEY (colaborador_fk) REFERENCES Colaborador (CPF),
    CONSTRAINT PK_Registro PRIMARY KEY (evento_fk, colaborador_fk)
);


CREATE TABLE IF NOT EXISTS Espectador (
    CPF VARCHAR(11) PRIMARY KEY,
    Nascimento DATE,
    Nome VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS Ingresso (
    codigo SERIAL PRIMARY KEY,
    lote INT,
    data_compra DATE,
    espectador_fk VARCHAR,
    evento_fk SERIAL NOT NULL,
    CONSTRAINT FK_Ingresso_2 FOREIGN KEY (espectador_fk) REFERENCES Espectador (CPF),
    CONSTRAINT FK_Ingresso_3 FOREIGN KEY (evento_fk) REFERENCES EventoEsportivo (evento_id),
    CONSTRAINT Unique_Ingresso UNIQUE (espectador_fk, evento_fk)
);

-- Active: 1697548532498@@127.0.0.1@5432@postgres
-- Inserindo dados na tabela Equipe
INSERT INTO Equipe (nome) VALUES
('Flamengo'),
('São Paulo'),
('Palmeiras'),
('Corinthians'),
('Santos');

-- Inserindo dados na tabela Atleta
INSERT INTO Atleta (carteira_atleta, nome, sexo, peso, altura, equipe_fk) VALUES
('123456', 'João Silva', 'M', 80, 180, 1),
('678901', 'Julia Costa', 'F', 65, 175, 1),
('234567', 'Maria Santos', 'F', 60, 170, 2),
('789012', 'Fernando Alves', 'M', 90, 190, 2),
('345678', 'Pedro Souza', 'M', 75, 175, 3),
('890123', 'Carla Rodrigues', 'F', 70, 170, 3),
('456789', 'Ana Oliveira', 'F', 55, 165, 4),
('901234', 'Rafaela Santos', 'F', 58, 160, 4),
('567890', 'Lucas Pereira', 'M', 85, 185, 5),
('012345', 'Gustavo Oliveira', 'M', 82, 182, 5);

-- Inserindo dados na tabela EventoEsportivo
INSERT INTO EventoEsportivo (nome, evento_data, tipo) VALUES
('Copa do Brasil', '2022-07-01', 'Vôlei de Praia'),
('Mundial de Clubes', '2022-12-01', 'Vôlei de Praia'),
('Campeonato de Vôlei Nordeste', '2022-06-01', 'Tênis');

-- Inserindo dados na tabela Patrocinador
INSERT INTO Patrocinador (CNPJ, razao_social, nome_fantasia) VALUES
('12345678901234', 'Nike Inc.', 'Nike'),
('23456789012345', 'Adidas AG', 'Adidas'),
('34567890123456', 'Puma SE', 'Puma'),
('45678901234567', 'Under Armour Inc.', 'Under Armour'),
('56789012345678', 'New Balance Athletics Inc.', 'New Balance'),
('67890123456789', 'Asics Corporation', 'Asics'),
('78901234567890', 'Mizuno Corporation', 'Mizuno'),
('89012345678901', 'Reebok International Ltd.', 'Reebok'),
('90123456789012', 'Fila Korea Ltd.', 'Fila'),
('01234567890123', 'Umbro Ltd.', 'Umbro');

-- Inserindo dados na tabela Patrocinio
INSERT INTO Patrocinio (evento_fk, patrocinador_fk, descricao) VALUES
(1,'12345678901234', 'Patrocínio Master'),
(1,'23456789012345', 'Patrocínio Master'),
(1, '34567890123456', 'Patrocínio Master'),
(1, '45678901234567', 'Patrocínio Master'),
(1, '56789012345678', 'Patrocínio Master'),
(2, '67890123456789', 'Patrocínio Master'),
(2, '78901234567890', 'Patrocínio Master'),
(2, '89012345678901', 'Patrocínio Master'),
(2, '90123456789012', 'Patrocínio Master'),
(2, '01234567890123', 'Patrocínio Master');

-- Inserindo dados na tabela Colaborador
INSERT INTO Colaborador (CPF, funcao, nome) VALUES
('34567890123', 'Médico', 'Pedro Souza'),
('45678901234', 'Massagista', 'Ana Oliveira'),
('67890123456', 'Fisioterapeuta', 'Julia Costa'),
('78901234567', 'Psicólogo', 'Fernando Alves'),
('01234567890', 'Coordenador de Base', 'Gustavo Oliveira');

-- Inserindo dados na tabela RegistroColaboracao
INSERT INTO RegistroColaboracao (colaborador_fk, evento_fk) VALUES
('34567890123', 1),
('45678901234', 1),
('67890123456', 1),
('78901234567', 1),
('01234567890', 1),
('34567890123', 2),
('45678901234', 2),
('67890123456', 2),
('01234567890', 2);

-- Inserindo dados na tabela Espectador
INSERT INTO Espectador (CPF, Nascimento, Nome) VALUES
('12345678901', '1990-01-01', 'João Silva'),
('23456789012', '1995-02-02', 'Maria Santos'),
('34567890123', '1985-03-03', 'Pedro Souza'),
('45678901234', '1998-04-04', 'Ana Oliveira'),
('56789012345', '1992-05-05', 'Lucas Pereira'),
('67890123456', '1993-06-06', 'Julia Costa'),
('78901234567', '1991-07-07', 'Fernando Alves'),
('89012345678', '1994-08-08', 'Carla Rodrigues'),
('90123456789', '1997-09-09', 'Rafaela Santos'),
('01234567890', '1996-10-10', 'Gustavo Oliveira');

-- Inserindo dados na tabela Participacao
-- INSERT INTO Participacao (equipe_fk, evento_fk, classificacao) VALUES
-- Inserindo dados na tabela Participacao
INSERT INTO Participacao (equipe_fk, evento_fk, classificacao) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(1, 2, 1),
(2, 2, 3),
(3, 2, 2),
(4, 2, 5),
(5, 2, 4),
(1, 3, 1),
(2, 3, 2),
(3, 3, 3);

INSERT INTO Ingresso(data_compra,espectador_fk,evento_fk,lote) VALUES
('2022-01-01', '12345678901', 1, 1),
('2022-01-02', '23456789012', 1, 1),
('2022-01-03', '34567890123', 1, 1),
('2022-01-04', '45678901234', 1, 2),
('2022-01-05', '56789012345', 1, 2),
('2022-01-06', '67890123456', 1, 2),
('2022-01-10', '01234567890', 1, 2),
('2022-01-07', '78901234567', 2, 1),
('2022-01-08', '89012345678', 2, 1),
('2022-01-09', '90123456789', 2, 1),
('2022-01-10', '01234567890', 3, 1);

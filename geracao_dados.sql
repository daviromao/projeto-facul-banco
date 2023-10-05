-- Active: 1696585962050@@127.0.0.1@3306
-- Inserindo dados na tabela Equipe
INSERT INTO Equipe (equipe_id, nome) VALUES
(1, 'Flamengo'),
(2, 'São Paulo'),
(3, 'Palmeiras'),
(4, 'Corinthians'),
(5, 'Santos'),
(6, 'Internacional'),
(7, 'Grêmio'),
(8, 'Atlético-MG'),
(9, 'Cruzeiro'),
(10, 'Vasco');

-- Inserindo dados na tabela Atleta
INSERT INTO Atleta (carteira_atleta, nome, sexo, peso, altura, equipe_fk) VALUES
('123456', 'João Silva', 'M', 80, 180, 1),
('234567', 'Maria Santos', 'F', 60, 170, 2),
('345678', 'Pedro Souza', 'M', 75, 175, 3),
('456789', 'Ana Oliveira', 'F', 55, 165, 4),
('567890', 'Lucas Pereira', 'M', 85, 185, 5),
('678901', 'Julia Costa', 'F', 65, 175, 6),
('789012', 'Fernando Alves', 'M', 90, 190, 7),
('890123', 'Carla Rodrigues', 'F', 70, 170, 8),
('901234', 'Rafaela Santos', 'F', 58, 160, 9),
('012345', 'Gustavo Oliveira', 'M', 82, 182, 10);

-- Inserindo dados na tabela EventoEsportivo
INSERT INTO EventoEsportivo (evento_id, nome, data, tipo) VALUES
('001', 'Copa do Brasil', '2022-07-01', 'Futebol'),
('002', 'Campeonato Brasileiro', '2022-05-01', 'Futebol'),
('003', 'Mundial de Clubes', '2022-12-01', 'Futebol'),
('004', 'Copa Libertadores', '2022-06-01', 'Futebol'),
('005', 'Grand Slam de Tênis', '2022-08-01', 'Tênis'),
('006', 'Mundial de Basquete', '2022-09-01', 'Basquete'),
('007', 'Copa do Mundo de Vôlei', '2022-10-01', 'Vôlei'),
('008', 'Mundial de Natação', '2022-11-01', 'Natação'),
('009', 'Copa do Mundo de Rugby', '2022-07-01', 'Rugby'),
('010', 'Mundial de Atletismo', '2022-08-01', 'Atletismo');

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
('001', '12345678901234', 'Patrocínio Master'),
('002', '23456789012345', 'Patrocínio Master'),
('003', '34567890123456', 'Patrocínio Master'),
('004', '45678901234567', 'Patrocínio Master'),
('005', '56789012345678', 'Patrocínio Master'),
('006', '67890123456789', 'Patrocínio Master'),
('007', '78901234567890', 'Patrocínio Master'),
('008', '89012345678901', 'Patrocínio Master'),
('009', '90123456789012', 'Patrocínio Master'),
('010', '01234567890123', 'Patrocínio Master');

-- Inserindo dados na tabela Colaborador
INSERT INTO Colaborador (CPF, funcao, nome) VALUES
('12345678901', 'Técnico', 'José Silva'),
('23456789012', 'Preparador Físico', 'Maria Santos'),
('34567890123', 'Médico', 'Pedro Souza'),
('45678901234', 'Massagista', 'Ana Oliveira'),
('56789012345', 'Nutricionista', 'Lucas Pereira'),
('67890123456', 'Fisioterapeuta', 'Julia Costa'),
('78901234567', 'Psicólogo', 'Fernando Alves'),
('89012345678', 'Analista de Desempenho', 'Carla Rodrigues'),
('90123456789', 'Assistente Técnico', 'Rafaela Santos'),
('01234567890', 'Coordenador de Base', 'Gustavo Oliveira');

-- Inserindo dados na tabela RegistroColaboracao
INSERT INTO RegistroColaboracao (evento_fk, colaborador_fk) VALUES
('001', '12345678901'),
('002', '23456789012'),
('003', '34567890123'),
('004', '45678901234'),
('005', '56789012345'),
('006', '67890123456'),
('007', '78901234567'),
('008', '89012345678'),
('009', '90123456789'),
('010', '01234567890');

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
INSERT INTO Participacao (equipe_fk, evento_fk, classificacao) VALUES
(1, '001', 'Campeão'),
(2, '001', 'Vice-Campeão'),
(3, '001', 'Semifinalista'),
(4, '001', 'Quartas de Final'),
(5, '001', 'Oitavas de Final'),
(6, '001', 'Fase de Grupos'),
(7, '001', 'Fase de Grupos'),
(8, '001', 'Fase de Grupos'),
(9, '001', 'Fase de Grupos'),
(10, '001', 'Fase de Grupos'),
(1, '002', 'Campeão'),
(2, '002', 'Vice-Campeão'),
(3, '002', 'Semifinalista'),
(4, '002', 'Quartas de Final'),
(5, '002', 'Oitavas de Final'),
(6, '002', 'Fase de Grupos'),
(7, '002', 'Fase de Grupos'),
(8, '002', 'Fase de Grupos'),
(9, '002', 'Fase de Grupos'),
(10, '002', 'Fase de Grupos'),
(1, '003', 'Campeão'),
(2, '003', 'Vice-Campeão'),
(3, '003', 'Semifinalista'),
(4, '003', 'Quartas de Final'),
(5, '003', 'Oitavas de Final'),
(6, '003', 'Fase de Grupos'),
(7, '003', 'Fase de Grupos'),
(8, '003', 'Fase de Grupos'),
(9, '003', 'Fase de Grupos'),
(10, '003', 'Fase de Grupos'),
(1, '004', 'Campeão'),
(2, '004', 'Vice-Campeão'),
(3, '004', 'Semifinalista'),
(4, '004', 'Quartas de Final'),
(5, '004', 'Oitavas de Final'),
(6, '004', 'Fase de Grupos'),
(7, '004', 'Fase de Grupos'),
(8, '004', 'Fase de Grupos'),
(9, '004', 'Fase de Grupos'),
(10, '004', 'Fase de Grupos'),
(1, '005', 'Campeão'),
(2, '005', 'Vice-Campeão'),
(3, '005', 'Semifinalista'),
(4, '005', 'Quartas de Final'),
(5, '005', 'Oitavas de Final'),
(6, '005', 'Fase de Grupos'),
(7, '005', 'Fase de Grupos'),
(8, '005', 'Fase de Grupos'),
(9, '005', 'Fase de Grupos'),
(10, '005', 'Fase de Grupos'),
(1, '006', 'Campeão'),
(2, '006', 'Vice-Campeão'),
(3, '006', 'Semifinalista'),
(4, '006', 'Quartas de Final'),
(5, '006', 'Oitavas de Final'),
(6, '006', 'Fase de Grupos'),
(7, '006', 'Fase de Grupos'),
(8, '006', 'Fase de Grupos'),
(9, '006', 'Fase de Grupos'),
(10, '006', 'Fase de Grupos'),
(1, '007', 'Campeão'),
(2, '007', 'Vice-Campeão'),
(3, '007', 'Semifinalista'),
(4, '007', 'Quartas de Final'),
(5, '007', 'Oitavas de Final'),
(6, '007', 'Fase de Grupos'),
(7, '007', 'Fase de Grupos'),
(8, '007', 'Fase de Grupos'),
(9, '007', 'Fase de Grupos'),
(10, '007', 'Fase de Grupos'),
(1, '008', 'Campeão'),
(2, '008', 'Vice-Campeão'),
(3, '008', 'Semifinalista'),
(4, '008', 'Quartas de Final'),
(5, '008', 'Oitavas de Final'),
(6, '008', 'Fase de Grupos');

INSERT INTO "Ingresso" (codigo,data_compra,espectador_fk,evento_fk,lote) VALUES
('001', '2022-01-01', '12345678901', '001', '1'),
('002', '2022-01-02', '23456789012', '001', '1'),
('003', '2022-01-03', '34567890123', '001', '1'),
('004', '2022-01-04', '45678901234', '001', '2'),
('005', '2022-01-05', '56789012345', '001', '2'),
('006', '2022-01-06', '67890123456', '001', '2'),
('007', '2022-01-07', '78901234567', '002', '1'),
('008', '2022-01-08', '89012345678', '002', '1'),
('009', '2022-01-09', '90123456789', '002', '1'),
('010', '2022-01-10', '01234567890', '003', '1');

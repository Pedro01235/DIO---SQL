create database oficinaTeste;

use oficinaTeste;

-- Criação das tabelas
CREATE TABLE Cliente (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Endereco VARCHAR(100),
    Telefone VARCHAR(15)
);

CREATE TABLE Veiculo (
    VeiculoID INT PRIMARY KEY,
    Modelo VARCHAR(50),
    Placa VARCHAR(10),
    Ano INT,
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);

CREATE TABLE Servico (
    ServicoID INT PRIMARY KEY,
    Descricao VARCHAR(100),
    Preco DECIMAL(10, 2)
);

CREATE TABLE OrdemServico (
    OrdemID INT PRIMARY KEY,
    VeiculoID INT,
    ServicoID INT,
    DataEntrada DATE,
    DataConclusao DATE,
    FOREIGN KEY (VeiculoID) REFERENCES Veiculo(VeiculoID),
    FOREIGN KEY (ServicoID) REFERENCES Servico(ServicoID)
);

-- Inserção de dados para teste
INSERT INTO Cliente VALUES (1, 'João Silva', 'Rua A, 123', '555-1234');
INSERT INTO Veiculo VALUES (1, 'Carro A', 'ABC1234', 2020, 1);
INSERT INTO Servico VALUES (1, 'Troca de óleo', 50.00);
INSERT INTO OrdemServico VALUES (1, 1, 1, '2024-01-19', '2024-01-20');

INSERT INTO Cliente VALUES (2, 'Maria Oliveira', 'Av. B, 456', '555-5678');
INSERT INTO Cliente VALUES (3, 'Carlos Santos', 'Rua C, 789', '555-8765');

INSERT INTO Veiculo VALUES (2, 'Carro B', 'XYZ5678', 2018, 2);
INSERT INTO Veiculo VALUES (3, 'Moto A', 'MOT123', 2022, 3);

INSERT INTO Servico VALUES (2, 'Reparo de freios', 80.00);
INSERT INTO Servico VALUES (3, 'Troca de pneus', 120.00);

INSERT INTO OrdemServico VALUES (2, 2, 2, '2024-01-20', '2024-01-21');
INSERT INTO OrdemServico VALUES (3, 3, 3, '2024-01-22', NULL);

-- Inserções extras para serviços relacionados ao mesmo veículo
INSERT INTO OrdemServico VALUES (4, 2, 3, '2024-01-23', NULL);
INSERT INTO OrdemServico VALUES (5, 2, 1, '2024-01-24', '2024-01-25');

-- Recupera todos os clientes
SELECT * FROM Cliente;

-- Recupera todos os serviços
SELECT * FROM Servico;

-- Recupera veículos do cliente com ID 1
SELECT * FROM Veiculo WHERE ClienteID = 1;

-- Recupera ordens de serviço concluídas
SELECT * FROM OrdemServico WHERE DataConclusao IS NOT NULL;

-- Calcula o preço total de uma ordem de serviço
SELECT *,
       (SELECT SUM(Preco) FROM Servico WHERE ServicoID IN (1, 2, 3)) AS PrecoTotal
FROM OrdemServico
WHERE OrdemID = 1;

-- Ordena os veículos por ano de fabricação
SELECT * FROM Veiculo ORDER BY Ano DESC;


-- Recupera serviços com mais de uma ordem de serviço
SELECT ServicoID, COUNT(OrdemID) AS QtdOrdens
FROM OrdemServico
GROUP BY ServicoID
HAVING COUNT(OrdemID) > 1;

-- Recupera informações completas de uma ordem de serviço
SELECT Cliente.Nome, Veiculo.Modelo, Servico.Descricao, OrdemServico.DataEntrada, OrdemServico.DataConclusao
FROM OrdemServico
JOIN Veiculo ON OrdemServico.VeiculoID = Veiculo.VeiculoID
JOIN Cliente ON Veiculo.ClienteID = Cliente.ClienteID
JOIN Servico ON OrdemServico.ServicoID = Servico.ServicoID
WHERE OrdemServico.OrdemID = 1;



-- Inserção de dados na tabela Cliente
INSERT INTO Cliente (IDCliente, Nome, Endereco)
VALUES 
    (1, 'Empresa ABC', 'Rua Comercial, 123'),
    (2, 'João da Silva', 'Avenida Principal, 456'),
    (3, 'Maria Oliveira', 'Praça Central, 789');

-- Inserção de dados na tabela ClientePJ
INSERT INTO ClientePJ (IDCliente, CPNJ, OutrosAtributosPJ)
VALUES 
    (1, '12345678901234', 'Outros dados da Empresa ABC');

-- Inserção de dados na tabela ClientePF
INSERT INTO ClientePF (IDCliente, CPF, OutrosAtributosPF)
VALUES 
    (2, '98765432101', 'Outros dados do João da Silva'),
    (3, '45678912323', 'Outros dados da Maria Oliveira');

-- Inserção de dados na tabela Conta
INSERT INTO Conta (NumeroConta, TipoConta, Saldo, IDCliente)
VALUES 
    (101, 'PJ', 5000.00, 1),
    (102, 'PF', 1000.00, 2),
    (103, 'PF', 2000.00, 3);

-- Inserção de dados na tabela Pagamento
INSERT INTO Pagamento (IDPagamento, MetodoPagamento, IDConta)
VALUES 
    (1, 'Cartão de Crédito', 101),
    (2, 'Boleto Bancário', 102),
    (3, 'Transferência Bancária', 103);

-- Inserção de dados na tabela Entrega
INSERT INTO Entrega (IDEntrega, StatusEntrega, CodigoRastreio, IDConta)
VALUES 
    (1, 'Em Trânsito', 'ABC123', 101),
    (2, 'Pendente', NULL, 102),
    (3, 'Entregue', 'XYZ789', 103);
    
    
    -- Inserção de dados na tabela Cliente
INSERT INTO Cliente (IDCliente, Nome, Endereco)
VALUES 
    (4, 'Empresa XYZ', 'Avenida dos Negócios, 567'),
    (5, 'Carlos Oliveira', 'Rua da Indústria, 890');

-- Inserção de dados na tabela ClientePJ
INSERT INTO ClientePJ (IDCliente, CPNJ, OutrosAtributosPJ)
VALUES 
    (4, '56789012345678', 'Outros dados da Empresa XYZ');

-- Inserção de dados na tabela ClientePF
INSERT INTO ClientePF (IDCliente, CPF, OutrosAtributosPF)
VALUES 
    (5, '76543210987', 'Outros dados do Carlos Oliveira');

-- Inserção de dados na tabela Conta
INSERT INTO Conta (NumeroConta, TipoConta, Saldo, IDCliente)
VALUES 
    (104, 'PJ', 7000.00, 4),
    (105, 'PF', 1500.00, 5);

-- Inserção de dados na tabela Pagamento
INSERT INTO Pagamento (IDPagamento, MetodoPagamento, IDConta)
VALUES 
    (4, 'Boleto Bancário', 104),
    (5, 'Cartão de Débito', 105);

-- Inserção de dados na tabela Entrega
INSERT INTO Entrega (IDEntrega, StatusEntrega, CodigoRastreio, IDConta)
VALUES 
    (4, 'Pendente', NULL, 104),
    (5, 'Em Trânsito', 'JKL456', 105);


-- Inserção de dados na tabela Cliente
INSERT INTO Cliente (IDCliente, Nome, Endereco)
VALUES 
    (6, 'Empresa QWERTY', 'Rua da Inovação, 123'),
    (7, 'Fernanda Souza', 'Avenida Tecnológica, 456');

-- Inserção de dados na tabela ClientePJ
INSERT INTO ClientePJ (IDCliente, CPNJ, OutrosAtributosPJ)
VALUES 
    (6, '98765432101234', 'Outros dados da Empresa QWERTY');

-- Inserção de dados na tabela ClientePF
INSERT INTO ClientePF (IDCliente, CPF, OutrosAtributosPF)
VALUES 
    (7, '87654321098', 'Outros dados da Fernanda Souza');

-- Inserção de dados na tabela Conta
INSERT INTO Conta (NumeroConta, TipoConta, Saldo, IDCliente)
VALUES 
    (106, 'PJ', 8000.00, 6),
    (107, 'PF', 1200.00, 7);

-- Inserção de dados na tabela Pagamento
INSERT INTO Pagamento (IDPagamento, MetodoPagamento, IDConta)
VALUES 
    (6, 'Transferência Bancária', 106),
    (7, 'Cartão de Crédito', 107);

-- Inserção de dados na tabela Entrega
INSERT INTO Entrega (IDEntrega, StatusEntrega, CodigoRastreio, IDConta)
VALUES 
    (6, 'Entregue', 'MNO789', 106),
    (7, 'Pendente', NULL, 107);

-- Inserção de dados na tabela Cliente
INSERT INTO Cliente (IDCliente, Nome, Endereco)
VALUES 
    (8, 'Empresa XYZ', 'Avenida dos Negócios, 789'),
    (9, 'Lucas Oliveira', 'Rua da Indústria, 101');

-- Inserção de dados na tabela ClientePJ
INSERT INTO ClientePJ (IDCliente, CPNJ, OutrosAtributosPJ)
VALUES 
    (8, '34567890123456', 'Outros dados da Empresa XYZ');

-- Inserção de dados na tabela ClientePF
INSERT INTO ClientePF (IDCliente, CPF, OutrosAtributosPF)
VALUES 
    (9, '23456789087', 'Outros dados do Lucas Oliveira');

-- Inserção de dados na tabela Conta
INSERT INTO Conta (NumeroConta, TipoConta, Saldo, IDCliente)
VALUES 
    (108, 'PJ', 6000.00, 8),
    (109, 'PF', 1800.00, 9);

-- Inserção de dados na tabela Pagamento
INSERT INTO Pagamento (IDPagamento, MetodoPagamento, IDConta)
VALUES 
    (8, 'Boleto Bancário', 108),
    (9, 'Cartão de Débito', 109);

-- Inserção de dados na tabela Entrega
INSERT INTO Entrega (IDEntrega, StatusEntrega, CodigoRastreio, IDConta)
VALUES 
    (8, 'Em Trânsito', 'PQR123', 108),
    (9, 'Entregue', 'STU456', 109);


-- Tabela Cliente
CREATE TABLE Cliente (
    IDCliente INT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(255)
);

-- Tabela ClientePJ
CREATE TABLE ClientePJ (
    IDCliente INT PRIMARY KEY,
    CPNJ VARCHAR(14) UNIQUE,
    OutrosAtributosPJ VARCHAR(255),
    FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente)
);

-- Tabela ClientePF
CREATE TABLE ClientePF (
    IDCliente INT PRIMARY KEY,
    CPF VARCHAR(11) UNIQUE,
    OutrosAtributosPF VARCHAR(255),
    FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente)
);

-- Tabela Conta
CREATE TABLE Conta (
    NumeroConta INT PRIMARY KEY,
    TipoConta VARCHAR(2) CHECK (TipoConta IN ('PJ', 'PF')),
    Saldo DECIMAL(10, 2),
    IDCliente INT,
    FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente)
);

-- Tabela Pagamento
CREATE TABLE Pagamento (
    IDPagamento INT PRIMARY KEY,
    MetodoPagamento VARCHAR(50),
    IDConta INT,
    FOREIGN KEY (IDConta) REFERENCES Conta(NumeroConta)
);

-- Tabela Entrega
CREATE TABLE Entrega (
    IDEntrega INT PRIMARY KEY,
    StatusEntrega VARCHAR(20),
    CodigoRastreio VARCHAR(50),
    IDConta INT,
    FOREIGN KEY (IDConta) REFERENCES Conta(NumeroConta)
);

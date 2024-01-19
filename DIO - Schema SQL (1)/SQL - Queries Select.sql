-- Recupera todos os clientes
SELECT * FROM Cliente;

-- Recupera todas as contas e seus saldos
SELECT NumeroConta, Saldo FROM Conta;

-- Recupera contas do tipo Pessoa Física (PF)
SELECT * FROM Conta WHERE TipoConta = 'PF';

-- Recupera entregas com status "Em Trânsito"
SELECT * FROM Entrega WHERE StatusEntrega = 'Em Trânsito';

-- Calcula o saldo médio das contas
SELECT AVG(Saldo) AS SaldoMedio FROM Conta;

-- Concatena o nome e o endereço do cliente
SELECT CONCAT(Nome, ', ', Endereco) AS NomeEndereco FROM Cliente;

-- Ordena contas por saldo em ordem decrescente
SELECT * FROM Conta ORDER BY Saldo DESC;

-- Ordena clientes por nome em ordem alfabética
SELECT * FROM Cliente ORDER BY Nome;

-- Recupera clientes que têm mais de uma conta
SELECT IDCliente, COUNT(NumeroConta) AS NumContas
FROM Conta
GROUP BY IDCliente
HAVING COUNT(NumeroConta) > 1;

-- Recupera todas as contas com detalhes do cliente
SELECT Conta.*, Cliente.Nome
FROM Conta
JOIN Cliente ON Conta.IDCliente = Cliente.IDCliente;

-- Recupera pagamentos e seus métodos para contas do tipo Pessoa Jurídica (PJ)
SELECT Pagamento.*, Conta.TipoConta
FROM Pagamento
JOIN Conta ON Pagamento.IDConta = Conta.NumeroConta
WHERE Conta.TipoConta = 'PJ';

SELECT Cliente.*, Conta.*
FROM Cliente
JOIN Conta ON Cliente.IDCliente = Conta.IDCliente;

SELECT Cliente.Nome, Conta.Saldo
FROM Cliente
JOIN Conta ON Cliente.IDCliente = Conta.IDCliente
WHERE Conta.Saldo > 2000.00;

SELECT Cliente.Nome, Pagamento.MetodoPagamento
FROM Cliente
JOIN Conta ON Cliente.IDCliente = Conta.IDCliente
JOIN Pagamento ON Conta.NumeroConta = Pagamento.IDConta
WHERE Conta.TipoConta = 'PJ';

SELECT StatusEntrega, COUNT(*) AS TotalEntregas
FROM Entrega
GROUP BY StatusEntrega;

SELECT Cliente.Nome, Pagamento.MetodoPagamento
FROM Cliente
JOIN Conta ON Cliente.IDCliente = Conta.IDCliente
JOIN Pagamento ON Conta.NumeroConta = Pagamento.IDConta
WHERE Pagamento.MetodoPagamento = 'Transferência Bancária';

SELECT Conta.NumeroConta, Conta.TipoConta
FROM Conta
LEFT JOIN Pagamento ON Conta.NumeroConta = Pagamento.IDConta
WHERE Pagamento.IDPagamento IS NULL;

SELECT Cliente.Nome, COUNT(Entrega.IDEntrega) AS NumEntregas
FROM Cliente
JOIN Conta ON Cliente.IDCliente = Conta.IDCliente
JOIN Entrega ON Conta.NumeroConta = Entrega.IDConta
GROUP BY Cliente.Nome
HAVING COUNT(Entrega.IDEntrega) > 1;








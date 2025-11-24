USE Loja;

INSERT INTO Cliente (nome, cpf) VALUES
('Ana Silva', '111.111.111-11'),
('Carlos Souza', '222.222.222-22'),
('Mariana Lima', '333.333.333-33');

INSERT INTO Conta (cliente_id, valor, vencimento, situacao) VALUES
(1, 150.00, '2025-03-10', 1),
(2, 220.50, '2025-03-15', 0),
(3, 499.99, '2025-03-20', 1);

USE Loja;

CREATE OR REPLACE VIEW contas_nao_pagas AS
SELECT 
    Conta.id AS id_conta,
    Cliente.nome AS nome_cliente,
    Cliente.cpf AS cpf_cliente,
    Conta.vencimento,
    Conta.valor
FROM Conta
JOIN Cliente ON Conta.cliente_id = Cliente.id
WHERE Conta.situacao = 1;

SELECT * FROM contas_nao_pagas;
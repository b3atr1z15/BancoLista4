CREATE DATABASE IF NOT EXISTS Loja;
USE Loja;

CREATE TABLE Cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE
);

CREATE TABLE Conta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    vencimento DATE NOT NULL,
    situacao TINYINT NOT NULL, -- 1 = não paga, 0 = paga
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id)
);
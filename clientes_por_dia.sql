-- Criação do banco de dados
CREATE DATABASE loja;
USE loja;

-- Tabela de clientes
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    data_cadastro DATE
);

-- Dados de exemplo
INSERT INTO clientes (nome, email, data_cadastro) VALUES
('João Silva', 'joao@email.com', '2026-06-27'),
('Maria Souza', 'maria@email.com', '2026-06-27'),
('Carlos Lima', 'carlos@email.com', '2026-06-28'),
('Ana Costa', 'ana@email.com', '2026-06-28'),
('Pedro Alves', 'pedro@email.com', '2026-06-28');

-- Permite criar funções (caso necessário)
SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER $$

CREATE FUNCTION total_clientes_dia(dataConsulta DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM clientes
    WHERE data_cadastro = dataConsulta;

    RETURN total;
END $$

DELIMITER ;

-- Teste da função
SELECT total_clientes_dia('2026-06-27') AS Total_Clientes;
SELECT total_clientes_dia('2026-06-28') AS Total_Clientes;
/* Criação do Banco de dados */
CREATE DATABASE venda_celulares;
USE venda_celulares;

/* Criação de tabelas para o sistema*/
CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(200)
);

CREATE TABLE Vendedor(
	id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    comissao_percentual DECIMAL (5,2)
);

CREATE TABLE Celular (
	id_celular INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50),
    modelo VARCHAR(100) NOT NULL,
    armazenamento VARCHAR(20),
    cor VARCHAR(30),
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    status VARCHAR(20)
);

CREATE TABLE Pedido(
	id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_vendedor INT NOT NULL,
    id_celular INT NOT NULL,
    data_pedido DATE,
    valor_total DECIMAL(10,2) NOT NULL,
    status_pedido VARCHAR(20),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_vendedor) REFERENCES Vendedor(id_vendedor),
    FOREIGN KEY (id_celular) REFERENCES Celular(id_celular)
);

CREATE TABLE Pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    forma_pagamento VARCHAR(30) NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL,
    data_pagamento DATE,
    status_pagamento VARCHAR(20),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)
);
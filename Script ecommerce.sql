--criação do banco de dados para cenário ecommerce--

CREATE DATABASE ECOMMERCE;

--usando o banco--
USE ECOMMERCE;

--criar tabela cliente--

CREATE TABLE CLIENTE (
	idCliente INT AUTO_INCREMENT PRIMARY KEY,
	Primeiro_nome VARCHAR(10) NOT NULL,
	Nome_Meio VARCHAR(20) NOT NULL,
	Ultimo_nome VARCHAR(20) NOT NULL,
	CGC CHAR(25) NOT NULL,
	EMAIL VARCHAR(50) NOT NULL,
	NASCIMENTO DATE NOT NULL,
	TIPO ENUM('PF', 'PJ'),
	ENDERECO VARCHAR(50),
	CONSTRAINT unique_cgc_cliente UNIQUE (CGC)
);

--criar tabela produto--

CREATE TABLE PRODUTO (
	idProduto INT AUTO_INCREMENT PRIMARY KEY,
	CATEGORIA ENUM('brinquedos', 'vestimenta', 'calcados', 'livraria', 'eletronicos', 'lar', 'eletroeletronico', 'tecnologia'),
	DESCRICAO VARCHAR(45) NOT NULL,
	VALOR VARCHAR(45) NOT NULL,
	COD_BARRAS INT NOT NULL,
	AVALIACAO_PRODUTO FLOAT NOT NULL,
	UNIDADE_MEDIDA ENUM('UN', 'KG', 'LT', 'M'),
	CONSTRAINT unique_cod_barras_produto UNIQUE (COD_BARRAS)
);

--criar tabela pedido--

CREATE TABLE PEDIDO (
	idPedido INT AUTO_INCREMENT PRIMARY KEY,
	idPedidoCliente INT,
	Status_Pedido
	
	
);

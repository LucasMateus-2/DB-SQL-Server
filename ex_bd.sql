-- DROP SCHEMA dbo;

CREATE SCHEMA dbo;
-- ex_bd.dbo.Fornecedor2 definition

-- Drop table

-- DROP TABLE ex_bd.dbo.Fornecedor2;

CREATE TABLE ex_bd.dbo.Fornecedor2 (
	Código int IDENTITY(0,1) NOT NULL,
	Nome varchar(200) COLLATE Latin1_General_CI_AS NOT NULL,
	CNPJ varchar(18) COLLATE Latin1_General_CI_AS NOT NULL,
	Endereço varchar(150) COLLATE Latin1_General_CI_AS NOT NULL,
	CONSTRAINT Fornecedor_PK PRIMARY KEY (Código)
);


-- ex_bd.dbo.Fornecedor_Produto definition

-- Drop table

-- DROP TABLE ex_bd.dbo.Fornecedor_Produto;

CREATE TABLE ex_bd.dbo.Fornecedor_Produto (
	[Cod-Fornecedor] varchar(100) COLLATE Latin1_General_CI_AS NULL,
	Cod_Produto varchar(100) COLLATE Latin1_General_CI_AS NULL
);


-- ex_bd.dbo.Produto definition

-- Drop table

-- DROP TABLE ex_bd.dbo.Produto;

CREATE TABLE ex_bd.dbo.Produto (
	Código int IDENTITY(0,1) NOT NULL,
	Nome varchar(100) COLLATE Latin1_General_CI_AS NOT NULL,
	Descrição varchar(200) COLLATE Latin1_General_CI_AS NOT NULL,
	CONSTRAINT Produto_PK PRIMARY KEY (Código)
);


-- ex_bd.dbo.Produto_Venda definition

-- Drop table

-- DROP TABLE ex_bd.dbo.Produto_Venda;

CREATE TABLE ex_bd.dbo.Produto_Venda (
	[Cod-Produto] varchar(200) COLLATE Latin1_General_CI_AS NOT NULL,
	[Num_NF iscal] int IDENTITY(0,1) NOT NULL,
	Preço float NOT NULL,
	Quantidade varchar(100) COLLATE Latin1_General_CI_AS NOT NULL,
	CONSTRAINT Produto_Venda_PK PRIMARY KEY ([Num_NF iscal])
);


-- ex_bd.dbo.Venda definition

-- Drop table

-- DROP TABLE ex_bd.dbo.Venda;

CREATE TABLE ex_bd.dbo.Venda (
	Num_NFiscal int IDENTITY(0,1) NOT NULL,
	[Data] date NOT NULL,
	Valor_total int NOT NULL,
	Cod_cliente varchar(100) COLLATE Latin1_General_CI_AS NOT NULL,
	Cod_loja varchar(100) COLLATE Latin1_General_CI_AS NOT NULL,
	CONSTRAINT Venda_PK PRIMARY KEY (Num_NFiscal)
);


-- ex_bd.dbo.Loja definition

-- Drop table

-- DROP TABLE ex_bd.dbo.Loja;

CREATE TABLE ex_bd.dbo.Loja (
	Código varchar(200) COLLATE Latin1_General_CI_AS NOT NULL,
	Nome varchar(200) COLLATE Latin1_General_CI_AS NOT NULL,
	CNPJ varchar(18) COLLATE Latin1_General_CI_AS NOT NULL,
	CONSTRAINT Loja_PK PRIMARY KEY (Código)
);


-- ex_bd.dbo.Cliente definition

-- Drop table

-- DROP TABLE ex_bd.dbo.Cliente;

CREATE TABLE ex_bd.dbo.Cliente (
	Código varchar(200) COLLATE Latin1_General_CI_AS NOT NULL,
	Nome varchar(200) COLLATE Latin1_General_CI_AS NOT NULL,
	Endereço varchar(100) COLLATE Latin1_General_CI_AS NOT NULL,
	CONSTRAINT Cliente_PK PRIMARY KEY (Código)
);

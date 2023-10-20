CREATE DATABASE proc_trigger;
USE proc_trigger;

CREATE TABLE cliente (
    id INT AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    dt_nascimento DATETIME NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(50),
    CONSTRAINT ch_pk_cliente PRIMARY KEY (id)
);

CREATE TABLE vendedor (
    id INT AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    dt_nascimento DATETIME NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(50),
    CONSTRAINT ch_pk_cliente PRIMARY KEY (id)
);

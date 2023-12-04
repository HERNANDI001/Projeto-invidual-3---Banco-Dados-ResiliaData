-- Criar Banco de dados resiliadata: 

CREATE database RESILIADATA;
USE RESILIADATA;
-- entidades necessárias = empresas parceiras, tecnologias, tecnologias utilizadas e colaboradores:

CREATE TABLE EmpresasParceiras (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT
);

CREATE TABLE Tecnologias (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    area VARCHAR(50)
);

CREATE TABLE TecnologiasEmpresas (
    id_empresa INT REFERENCES EmpresasParceiras(id),
    id_tecnologia INT REFERENCES Tecnologias(id),
    PRIMARY KEY (id_empresa, id_tecnologia)
);

CREATE TABLE Colaboradores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(100),
    id_empresa INT REFERENCES EmpresasParceiras(id)
    );
    -- simulação de dois registros para cada entidade: 
    
INSERT INTO EmpresasParceiras (nome, descricao) VALUES
    ('Empresa Resilia 1', 'Descrição da Empresa Resilia 1'),
    ('Empresa Resilia 2', 'Descrição da Empresa Resilia 2');
   INSERT INTO Tecnologias (nome, area) VALUES
    ('Python', 'Webdev'),
    ('SQL', 'Dados');
    INSERT INTO TecnologiasEmpresas (id_empresa, id_tecnologia) VALUES
    (1, 1), -- Empresa Resilia 1 utilizando Python
    (2, 2); -- Empresa Resilia 2 utilizando SQL
INSERT INTO Colaboradores (nome, cargo, id_empresa) VALUES
    ('Hernandi', 'Desenvolvedor', 1), -- Hernandi trabalha na Empresa Resilia 1
    ('Kalleb', 'Analista de Dados', 2); -- Kalleb trabalha na Empresa Resilia 2


   
   

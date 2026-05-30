CREATE DATABASE laboratorio_insetos;
USE laboratorio_insetos;

CREATE TABLE coletor (
    id_coletor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    equipe VARCHAR(100),
    contato VARCHAR(100)
);

CREATE TABLE localizacao (
    id_local INT AUTO_INCREMENT PRIMARY KEY,
    nome_area VARCHAR(100) NOT NULL,
    bioma VARCHAR(100),
    cidade VARCHAR(100),
    latitude DECIMAL(10,6),
    longitude DECIMAL(10,6),
    altitude DECIMAL(8,2)
);

CREATE TABLE coleta (
    id_coleta INT AUTO_INCREMENT PRIMARY KEY,
    id_coletor INT NOT NULL,
    id_local INT NOT NULL,
    data_coleta DATE NOT NULL,
    horario_coleta TIME,
    metodo VARCHAR(100),
    observacoes TEXT,

    FOREIGN KEY (id_coletor)
        REFERENCES coletor(id_coletor)
        ON DELETE RESTRICT,

    FOREIGN KEY (id_local)
        REFERENCES localizacao(id_local)
        ON DELETE RESTRICT
);

CREATE TABLE taxonomia (
    id_taxonomia INT AUTO_INCREMENT PRIMARY KEY,
    ordem VARCHAR(100),
    familia VARCHAR(100),
    genero VARCHAR(100),
    especie VARCHAR(100)
);

CREATE TABLE inseto (
    id_inseto INT AUTO_INCREMENT PRIMARY KEY,
    nome_popular VARCHAR(100) NOT NULL,
    estado_do_inseto VARCHAR(100),
    observacoes TEXT,
    id_coleta INT NOT NULL,
    id_taxonomia INT NOT NULL,

    FOREIGN KEY (id_coleta)
        REFERENCES coleta(id_coleta)
        ON DELETE RESTRICT,

    FOREIGN KEY (id_taxonomia)
        REFERENCES taxonomia(id_taxonomia)
        ON DELETE RESTRICT
);

CREATE TABLE pesquisador (
    id_pesquisador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100),
    contato VARCHAR(100)
);

CREATE TABLE pesquisa (
    id_pesquisa INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    data_analise DATE,
    objetivo_estudo TEXT,
    resultado TEXT,
    id_pesquisador INT NOT NULL,

    FOREIGN KEY (id_pesquisador)
        REFERENCES pesquisador(id_pesquisador)
        ON DELETE RESTRICT
);

CREATE TABLE pesquisa_inseto (
    id_pesquisa INT NOT NULL,
    id_inseto INT NOT NULL,
    observacao_analise TEXT,

    PRIMARY KEY (id_pesquisa, id_inseto),

    FOREIGN KEY (id_pesquisa)
        REFERENCES pesquisa(id_pesquisa)
        ON DELETE CASCADE,

    FOREIGN KEY (id_inseto)
        REFERENCES inseto(id_inseto)
        ON DELETE CASCADE
);
